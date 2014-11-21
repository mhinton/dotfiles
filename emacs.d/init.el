;;;; package.el
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(setq package-user-dir "~/.emacs.d/elpa/")
(package-initialize)

(defvar my-packages '(better-defaults
                      browse-kill-ring
                      ido-ubiquitous
                      flx-ido
                      ace-jump-mode
                      ag
                      expand-region
                      idle-highlight-mode
                      ; paredit
                      projectile
                      find-file-in-project
                      magit
                      rinari
                      clojure-mode
                      rainbow-delimiters
                      ac-nrepl
                      markdown-mode+
                      yaml-mode
                      smex
                      ujelly-theme
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;;;; Paths
; (when (memq window-system '(mac ns))
;   (exec-path-from-shell-initialize))
(ignore-errors (server-start))
(push "~/.emacs.d/libs" load-path)

;;;; macros
(defmacro after (mode &rest body)
   "`eval-after-load' MODE evaluate BODY."
     (declare (indent defun))
       `(eval-after-load ,mode
          '(progn ,@body)))

;(setq default-mode-line-format
;      '("" "%[%f %*+%* %l (" mode-name minor-mode-alist ")%]" mode-line-process " " mode-line-buffer-identification "%-"))

(menu-bar-mode 1)
(scroll-bar-mode 1)
(global-auto-revert-mode t) ; revert buffers when the file on disk changes
(browse-kill-ring-default-keybindings)  ; M-y - n for next, q to quit
(global-hl-line-mode 0) ; highlight the current line
(global-linum-mode 1)
; improve the spacing around line numbers
(defadvice linum-update-window (around linum-dynamic activate)
  (let* ((w (length (number-to-string
                     (count-lines (point-min) (point-max)))))
         (linum-format (concat " %" (number-to-string w) "d ")))
    ad-do-it))

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(put 'set-goal-column 'disabled nil)

(ido-everywhere 1)
(flx-ido-mode 1)
(setq require-final-newline t)
; flx-ido GC fix
(setq gc-cons-threshold 20000000)

;;;; recentf
(recentf-mode t)
(setq-default recentf-max-menu-items 40)
(setq-default recentf-menu-filter 'recentf-sort-basenames-ascending)

;; smex setup
(add-hook 'after-init-hook 'smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c M-x") 'smex-update-and-run)
;; This is your old M-x.
(global-set-key (kbd "M-z") 'execute-extended-command)


;;;; Hippie-expand
(setq hippie-expand-try-functions-list '(try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-expand-all-abbrevs
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))


(setq-default ansi-color-for-comint-mode t
	      visible-bell t
	      scroll-conservatively 5
	      scroll-margin 2)


;;;; clojure-mode
(after 'clojure-mode-autoloads
  (add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode)))

(defun clojure-generic-expression ()
  (setq imenu-prev-index-position-function nil)
  (setq imenu-generic-expression '((nil "^\(facts? \\(.*\\)" 1))))


(after 'clojure-mode
  (message "Clojure mode loaded")
  (define-clojure-indent
     (defmulti 'defun)
     (defmethod 'defun)
     (assoc nil)  ; override
     (fact 'defun)
     (facts 'defun)
     (fact-group 'defun)
     (silent-fact 'defun)
     (future-fact 'defun)
     (tabular 'defun)
     (against-background 'defun)
     (error-let 'defun)
     (provided 0)
     )
  (add-hook 'clojure-mode-hook 'hl-sexp-mode)
  (add-hook 'clojure-mode-hook 'clojure-generic-expression))


(windmove-default-keybindings 'control)



(set-frame-font  "Source Code Pro for Powerline-14" nil t)
;(load-theme 'sanityinc-tomorrow-night)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 ; '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-enabled-themes (quote (ujelly)))
 '(custom-safe-themes
   (quote
    ("42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" "f41fd682a3cd1e16796068a2ca96e82cfd274e58b978156da0acce4d56f2b0d5" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" "4a60f0178f5cfd5eafe73e0fc2699a03da90ddb79ac6dbc73042a591ae216f03" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
