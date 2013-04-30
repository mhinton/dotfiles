# === EDITOR ===
# Pry.editor = 'vim'
Pry.config.editor = 'vim'
Pry.config.color = true
Pry.config.history.should_save = true
Pry.config.should_load_local_rc = Dir.pwd != Dir.home

if Readline::VERSION =~ /editline/i
  warn "Warning: Using Editline instead of Readline."
end

# tell Readline when the window resizes
# old_winch = trap 'WINCH' do
#   if `stty size` =~ /\A(\d+) (\d+)\n\z/
#     Readline.set_screen_size $1.to_i, $2.to_i
#   end
#   old_winch.call unless old_winch.nil?
# end

def pbcopy(data)
  IO.popen 'pbcopy', 'w' do |io|
    io << data
  end
  nil
end

def pbpaste
  `pbpaste`
end

# wrap ANSI codes so Readline knows where the prompt ends
def colour(name, text)
  if Pry.color
    "\001#{Pry::Helpers::Text.send name, '{text}'}\002".sub '{text}', "\002#{text}\001"
  else
    text
  end
end

# === CUSTOM PROMPT ===
# This prompt shows the ruby version (useful for RVM)
Pry.prompt = [proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]
Pry.config.prompt = Pry::NAV_PROMPT

# pretty prompt
# Pry.config.prompt = [
#   proc do |object, nest_level, pry|
#     prompt  = colour :bright_red, Pry.view_clip(object)
#     prompt += ":#{nest_level}" if nest_level > 0
#     prompt += colour :cyan, ' » '
#   end, proc { |object, nest_level, pry| colour :cyan, '» ' }
# ]

# === Pry Debugger ===
begin
  gem "pry-debugger"
rescue LoadError => e
else
  #Pry.config.commands.import default_command_set
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# === Listing config ===
# Better colors - by default the headings for methods are too 
# similar to method name colors leading to a "soup"
# These colors are optimized for use with Solarized scheme 
# for your terminal
Pry.config.ls.separator = "\n" # new lines between methods
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

# == PLUGINS ===
# awesome_print gem: great syntax colorized printing
# look at ~/.aprc for more settings for awesome_print
begin
  require 'awesome_print'
  ## The following line enables awesome_print for all pry output,
  ## and it also enables paging
  Pry.config.print = proc {|output, value| Pry::Helpers::BaseHelpers.stagger_output("=> #{value.ai}", output)}

  # If you want awesome_print without automatic pagination, use the line below
  # Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "gem install awesome_print  # <-- highly recommended"
end

begin
  require 'hirb'
rescue LoadError => err
  puts "gem install hirb # <-- highly recommended"
end

# https://github.com/pry/pry/wiki/faq#wiki-hirb
if defined? Hirb
  # Slightly dirty hack to fully support in-session Hirb.disable/enable toggling
  Hirb::View.instance_eval do
    def enable_output_method
      @output_method = true
      @old_print = Pry.config.print
      Pry.config.print = proc do |output, value|
        Hirb::View.view_or_page_output(value) || @old_print.call(output, value)
      end
    end

    def disable_output_method
      Pry.config.print = @old_print
      @output_method = nil
    end
  end

  Hirb.enable
end

# === CUSTOM COMMANDS ===
# from: https://gist.github.com/1297510
default_command_set = Pry::CommandSet.new do
  command "copy", "Copy argument to the clip-board" do |str|
     IO.popen('pbcopy', 'w') { |f| f << str.to_s }
  end
  command "clear" do
    system 'clear'
    if ENV['RAILS_ENV']
      output.puts "Rails Environment: " + ENV['RAILS_ENV']
    end
  end
  command "sql", "Send sql over AR." do |query|
    if ENV['RAILS_ENV'] || defined?(Rails)
      pp ActiveRecord::Base.connection.select_all(query)
    else
      pp "No rails env defined"
    end
  end
  command "caller_method" do |depth|
    depth = depth.to_i || 1
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ caller(depth+1).first
      file   = Regexp.last_match[1]
      line   = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      output.puts [file, line, method]
    end
  end
end


# === CONVENIENCE METHODS ===
# Stolen from https://gist.github.com/807492
# Use Array.toy or Hash.toy to get an array or hash to play with
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end

# Simple regular expression helper
# show_regexp - stolen from the pickaxe
def show_regexp(a, re)
   if a =~ re
      "#{$`}<<#{$&}>>#{$'}"
   else
      "no match"
   end
end

# Convenience method on Regexp so you can do
# /an/.show_match("banana")
class Regexp
  def show_match(a)
    show_regexp(a, self)
  end
end

#Reformat Exception
Pry.config.exception_handler = proc do |output, exception, _|
  output.puts "\e[31m#{exception.class}: #{exception.message}"
  output.puts "from #{exception.backtrace.first}\e[0m"
end

# === COLOR CUSTOMIZATION ===
# Everything below this line is for customizing colors, you have to use the ugly
# color codes, but such is life. 
CodeRay.scan("example", :ruby).term # just to load necessary files
# Token colors pulled from: https://github.com/rubychan/coderay/blob/master/lib/coderay/encoders/terminal.rb
TERM_TOKEN_COLORS = {
        :attribute_name => '33',
        :attribute_value => '31',
        :binary => '1;35',
        :char => {
          :self => '36', :delimiter => '34'
        },
        :class => '1;35',
        :class_variable => '36',
        :color => '32',
        :comment => '37',
        :complex => '34',
        :constant => ['34', '4'],
        :decoration => '35',
        :definition => '1;32',
        :directive => ['32', '4'],
        :doc => '46',
        :doctype => '1;30',
        :doc_string => ['31', '4'],
        :entity => '33',
        :error => ['1;33', '41'],
        :exception => '1;31',
        :float => '1;35',
        :function => '1;34',
        :global_variable => '42',
        :hex => '1;36',
        :include => '33',
        :integer => '1;34',
        :key => '35',
        :label => '1;15',
        :local_variable => '33',
        :octal => '1;35',
        :operator_name => '1;29',
        :predefined_constant => '1;36',
        :predefined_type => '1;30',
        :predefined => ['4', '1;34'],
        :preprocessor => '36',
        :pseudo_class => '34',
        :regexp => {
          :self => '31',
          :content => '31',
          :delimiter => '1;29',
          :modifier => '35',
          :function => '1;29'
        },
        :reserved => '1;31',
        :shell => {
          :self => '42',
          :content => '1;29',
          :delimiter => '37',
        },
        :string => {
          :self => '36',
          :modifier => '1;32',
          :escape => '1;36',
          :delimiter => '1;32',
        },
        :symbol => '1;31',
        :tag => '34',
        :type => '1;34',
        :value => '36',
        :variable => '34',
        
        :insert => '42',
        :delete => '41',
        :change => '44',
        :head => '45'
}

module CodeRay
    module Encoders
        class Terminal < Encoder
            # override old colors
            TERM_TOKEN_COLORS.each_pair do |key, value|
                TOKEN_COLORS[key] = value
            end
        end
    end
end

railsrc_path = File.expand_path("~/.railsrc")
if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
  begin
    load railsrc_path
  rescue Exception
    warn "Could not load: #{ railsrc_path } because of #{$!.message}" # because of $!.message
  end
end
