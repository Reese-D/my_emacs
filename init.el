;;useful tips
;;C-h k --type this then any other command, and it will tell you the name of the command assigned to that hotkey as well as a description
;;C-h w --reverse of C-h k, type in the name of any command and it will tell you the keybinding for it


(require 'package)

;;add scripts directory to load path, so that .el files are automatically evaluated
(add-to-list 'load-path "~/.emacs.d/scripts")
(add-to-list 'load-path "~/.emacs.d/custom_elisp/")

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

(defun add-and-require-multiple (&rest list)
    (let((required (pop list)))
	 (progn
	   (unless (package-installed-p required)
	     (package-install required))
	   (and required
		(require required)))))

(package-initialize)
(add-and-require-multiple 's
			  'dash
			  'transpose-frame
			  'glsl-mode
			  'projectile
			  'neotree
			  'yasnippet
		  	  'yasnippet-snippets
			  'web-mode
			  'jump
			  'inf-ruby
			  'company
			  'with-editor
			  'magit-popup
			  'magit
;			  'curl
			  'dumb-jump
			  'ace-jump-mode
			  )



(add-to-list 'load-path "~/.emacs.d./quicklisp/dists/quicklisp/software/slime-v2.17")
(require 'slime)



(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
(add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
 (add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;;set up web-mode C-c C-f to fold code, C-c C-n to jump to open/closing tags if at front
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


(global-set-key (kbd "M-i") nil);; Remove the old keybinding tab-to-tab-stop
(global-set-key (kbd "M-i i") 'dumb-jump-go)
(global-set-key (kbd "M-i b") 'dumb-jump-back)
(global-set-key (kbd "M-i q") 'dumb-jump-quick-look)
(global-set-key (kbd "M-i o") 'dumb-jump-go-other-window)
(global-set-key (kbd "M-i e") 'dumb-jump-go-prefer-external)
(global-set-key (kbd "M-i w") 'dumb-jump-go-prefer-external-other-window)

;;
;; ace jump mode major function
;; 
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

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




;;; Define a default fullscreen and non full-screen mode, then add a function to toggle between the two
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


(defun toggle-fullscreen ()
  (interactive)
  (if (eq (frame-parameter nil 'fullscreen) 'fullboth)  ;tests if already fullscreened
      (my-non-fullscreen)
    (my-fullscreen)))

;;copies the buffers current file path
(defun filename ()
  "Copy the full path of the current buffer."

  (interactive)
  (kill-new (buffer-file-name (window-buffer (minibuffer-selected-window)))))

;;---------------------------------keybindings------------------------------------

(setq next-line-add-newlines t) ;;C-n now adds newline if at end of buffer
(global-set-key (kbd "C-c f") 'toggle-fullscreen)
(global-set-key (kbd "<C-tab>") 'dabbrev-expand)

(global-set-key (kbd "C-c v") 'filename)

;; Keybinds for the Multiple-Cursors package
(global-set-key (kbd "C-c s") 'mc/edit-lines)
(global-set-key (kbd "C-c n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c a") 'mc/mark-more-like-this-extended)

;; Different keybinds for macros
(global-set-key (kbd "C-c r s") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-c r e") 'kmacro-end-or-call-macro)

;; Ace Jump Mode 
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Neotree
(define-key global-map (kbd "C-c 8") 'neotree-toggle)

;;---------------------------------Initialization---------------------------------

(toggle-fullscreen)
(setq inhibit-startup-message t)
(put 'upcase-region 'disabled nil)

;;add wombat theme
(load-theme 'wombat)

;;this will indent switch statements in c
(c-set-offset 'case-label '+)

(yas-global-mode 1)
(projectile-global-mode)


;; Let's run 8 checks at once instead.
(setq flymake-max-parallel-syntax-checks 8)

;; I want to see at most the first 4 errors for a line.
(setq flymake-number-of-errors-to-display 4)

(company-mode)
(add-hook 'after-init-hook 'global-company-mode)

;;make c indent 4 by default instead of 2
(setq-default c-basic-offset 4)

;(setq mac-option-modifier 'meta)  ;enable this if using a mac



