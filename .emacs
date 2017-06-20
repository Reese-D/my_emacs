;;useful tips
;;C-h k --type this then any other command, and it will tell you the name of the command assigned to that hotkey as well as a description
;;C-h w --reverse of C-h k, type in the name of any command and it will tell you the keybinding for it

(defvar path "~/my_emacs/" "home path")
(defvar elpa-path ".emacs.d/elpa")
(add-to-list 'load-path (concat path ".emacs.d/custom_elisp/"))
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
;;add scripts directory to load path, so that .el files are automatically evaluated
(add-to-list 'load-path (concat path ".emacs.d/scripts"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))


;;make c indent 4 by default instead of 2
(setq-default c-basic-offset 4)


;;macros to help with code reuse
(defmacro add-to-include (str)
  `(add-to-list 'load-path (concat path ,"/" elpa-path ,"/" ,str)))

(defmacro add-and-require (path pkg-name)
  `(progn
     (add-to-include ,path)
     (require ,pkg-name)))

(defun add-and-require-multiple (&rest item)
  (dotimes (i (/ (length item) 2))
    (add-and-require (pop item) (pop item))))

;;;no 'do' in elisp?
;; (defun add-and-require-multiple  (&rest item)
;;   (do ((current (pop item) (pop item)))
;;       ((< (length item) 1) NIL)
;;       (add-and-require current (pop item))))

;;;no 'loop' either?? :(
;; (defun add-and-require-multiple (&rest item)
;;   (loop
;;        (when (< (length item) 2)
;; 	 (return))
;;        (add-and-require current (pop item) )))
     
(add-and-require-multiple "epl" 'epl
			  "pkg-info" 'pkg-info
			  "elixir-major-mode" 'elixir-mode
			  "s" 's
			  "popup" 'popup
			  "dash" 'dash
			  "flycheck" 'flycheck
			  "omnisharp" 'omnisharp
			  "sbt-mode" 'sbt-mode
			  "haskell_mode" 'haskell-mode-autoloads
			  "transpose-frame" 'transpose-frame
			  "glsl-mode" 'glsl-mode
			  "popup-20160409.2133" 'popup
			  "scala-mode-ensime" 'scala-mode
			  "projectile" 'projectile
			  "flymake" 'flymake
			  "csharp-mode" 'csharp-mode
			  "neotree" 'neotree
			  "yasnippet" 'yasnippet
			  "web-mode" 'web-mode
			  "emacs-rails-reloaded" 'rails-autoload
			  "jump" 'jump
			  "inf-ruby" 'inf-ruby
			  "rinari" 'rinari
			  "company-mode" 'company
			  "f" 'f
			  "dumb_jump" 'dumb-jump
			  "multiple-cursors-20160304.659" 'multiple-cursors)
			  
(add-to-list 'load-path (concat path "quicklisp/dists/quicklisp/software/slime-v2.17"))
(require 'slime)

(add-hook 'csharp-mode-hook 'omnisharp-mode)


;;this will indent switch statements in c
(c-set-offset 'case-label '+)

(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))



(yas-global-mode 1)
(projectile-global-mode)


;; Let's run 8 checks at once instead.
(setq flymake-max-parallel-syntax-checks 8)
;; I want to see at most the first 4 errors for a line.
(setq flymake-number-of-errors-to-display 4)


(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (electric-pair-mode 1)       ;; Emacs 24
  (electric-pair-local-mode 1) ;; Emacs 25
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)

(define-key global-map (kbd "C-c 8") 'neotree-toggle)

;;set up web-mode C-c C-f to fold code, C-c C-n to jump to open/closing tags if at front
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(company-mode)
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "M-i") nil);; Remove the old keybinding tab-to-tab-stop
(global-set-key (kbd "M-i i") 'dumb-jump-go)
(global-set-key (kbd "M-i b") 'dumb-jump-back)
(global-set-key (kbd "M-i q") 'dumb-jump-quick-look)
(global-set-key (kbd "M-i o") 'dumb-jump-go-other-window)
(global-set-key (kbd "M-i e") 'dumb-jump-go-prefer-external)
(global-set-key (kbd "M-i w") 'dumb-jump-go-prefer-external-other-window)

;;set up omnisharp
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook 'omnisharp-mode)
(setf omnisharp-server-executable-path ".emacs.d/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe")
;; to use omnisharp type `M-x omnisharp-start-omnisharp-server` and then specify the path to a .sln file (for example unity creates .sln files when it creates projects) this will give auto-complete functionality for c# like visualStudios

;;
;; ace jump mode major function
;; 
(add-to-list 'load-path (concat path ".emacs.d/elpa/ace-jump-mode-20140616.115"))
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(add-hook 'csharp-mode-hook 'omnisharp-mode)

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("afbb40954f67924d3153f27b6d3399df221b2050f2a72eb2cfa8d29ca783c5a8" "e696d2fe3f4756b23eec2eb6612f0b7c8c030e83890df7cf17962fe65f9a0bab" "109aac1dc8c781bfb31dc83da4f6f5540b9e1b32091456587c3f593ffdfad798" "36f0869b32ef5772302957ce4b72eab9502c16a424c0d821ed7f7d895263065f" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "e871b9a4e0aa6d8ab6e6f819e29950009e3a793104d75bf4506acee03ccfbf1e" "dff47c08aef5d9367cc26f18ccb30694420ee18f184b475c45e230574d49f07e" default)))
 '(ediff-diff-program "/usr/bin/diff")
;; '(ns-function-modifier (quote super))
;; '(ns-right-command-modifier (quote meta))
 '(package-selected-packages (quote (slime multiple-cursors evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;slime, for lisp programming
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))


;;Predeclare c stuff macro, loads a perl script that finds all functions and creates predeclarations for them
(defun predeclare (x)
  (setq last-prefix-arg '(4))
  (interactive "sInsert File Name: ")
  ;;(call-process "perl" nil t t "/Users/DewReese/scripts/printCPreDeclarations.pl" (format "%s" x))
  (call-process-shell-command (format "perl ~/my_emacs/.emacs.d/scripts/printCPreDeclarations.pl %s" x) nil t) ;;this can use ~ other can't
  )

(setq mac-option-modifier 'meta)

;;defines a c skeleton structure
(define-skeleton c-skeleton

  "Creates a default skeleton structure for a brand new c file"
  "default string?"
  "/*******************************************************************************\n"
  "* Author(s): Reese De Wind\n"
  "* Version: 0.0\n"
  "* Created: " (current-time-string) "\n"
  "*******************************************************************************/\n"
  "\n\n"
  "int main(int argc, char **argv){\n"
  "  return 0;\n"
  "}\n"
  )

(define-auto-insert "\\.\\([Cc]\\|cc\\|cpp\\)\\'" 'c-skeleton)

;;enables auto insert mode so it doesn't have to be done manually
(auto-insert-mode)

;; (add-to-list 'load-path (concat path ".emacs.d/elpa/zenburn-theme-2.4"))
;; (require 'zenburn-theme)
;; (global-linum-mode t)

;;add wombat theme instead of zenburn
(load-theme 'wombat)
(defun my-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen 'fullboth) ;this makes the frame go fullscreen
  (tool-bar-mode -1) ;these 3 lines turn off GUI junk
  ;(scroll-bar-mode -1)
  (menu-bar-mode -1))

(defun my-non-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'width 82)
  (set-frame-parameter nil 'fullscreen 'fullheight)
  (menu-bar-mode t)) ;I don't turn tool-bar and scroll-bar back on b/c I never want them



(setq next-line-add-newlines t) ;;C-n now adds newline if at end of buffer

;;---------------------------------keybindings------------------------------------

(defun toggle-fullscreen ()
  (interactive)
  (if (eq (frame-parameter nil 'fullscreen) 'fullboth)  ;tests if already fullscreened
      (my-non-fullscreen)
    (my-fullscreen)))

(global-set-key (kbd "C-c f") 'toggle-fullscreen)
(global-set-key (kbd "<C-tab>") 'dabbrev-expand)
(global-set-key (kbd "C-c x") 'predeclare)



;;copies the buffers current file path
(defun filename ()
  "Copy the full path of the current buffer."

  (interactive)
  (kill-new (buffer-file-name (window-buffer (minibuffer-selected-window)))))

(global-set-key (kbd "C-c v") 'filename)
;;works with predeclare, to use the current filename as the file to get predeclarations from
(global-set-key (kbd "C-c C-x c") (kbd "C-c v C-c x C-y"))

(global-set-key (kbd "C-c s") 'mc/edit-lines)
(global-set-key (kbd "C-c n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c a") 'mc/mark-more-like-this-extended)


;;toggle c#if mode
(require 'cSharpIf-mode)
(global-set-key (kbd "C-c i f") 'cSharpIf-mode)


(global-set-key (kbd "C-c r s") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-c r e") 'kmacro-end-or-call-macro)

;;--------------------------------------------------------------------------------

;;lets call some functions so we don't have to call them everytime we start emacs

					;(delete-other-windows)
					;(split-window-right nil)
					;(other-window 1)
					;(other-window 1)
					;(delete-window)
(toggle-fullscreen)
(setq inhibit-startup-message t)
					;(ansi-term "bash")
					;(other-window 1)
(put 'upcase-region 'disabled nil)


;;when using git with emacs, the command    find . ! -name "*.cs~" | xargs git add
					;could be very useful, checkout specific directories you don't want, and then add everything except the temporary files ending in ~










