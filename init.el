;; For GitHub Org-Mode:
(add-to-list 'load-path "~/.emacs.d/src/org-mode/lisp")
(require 'org-loaddefs)

(setq org-image-actual-width nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-message t)
(setq visible-bell t)
(set-face-attribute 'default nil :font "Source Code Pro" :height 140)

(scroll-bar-mode -1)	; Disable visible scrollbar
(tool-bar-mode -1)	; Disable the toolbar
(tooltip-mode -1)	; Disable tooltips
(set-fringe-mode 10)	; Give some breathing room

(menu-bar-mode -1)	; Disable the menu bar

(load-theme 'tango-dark t)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Initialize package sources

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)


(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
;;			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit counsel-projectile projectile prjectile hydra evil-collection evil general all-the-icons-dired helpful counsel-world-clock counsel ivy-rich which-key rainbow-delimiters doom-modeline use-package-hydra ivy command-log-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package command-log-mode)
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)	
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; (global-set-key (kbd "C-M-j") 'counsel-switch-buffer)

;; (define-key emacs-lisp-mode-map (kbd "C-x M-t") 'counsel-load-theme)


(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 5)))

;; COLUMN NUMBERS
;;(column-number-mode t)
;; LINE NUMBERS
;; (setq global-display-line-numbers 1)
;; (global-display-line-numbers-mode t)

;; RELATIVE
;;(setq global-display-line-numbers-type 'relative)
;;(global-display-line-numbers-type 'relative)
;; (global-display-line-numbers-mode 'relative)
;;(setq global-display-line-numbers-type 'relative)


(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode 1))
(setq global-display-line-numbers-type 'relative)
(column-number-mode)


;; DISABLE LINE NUMBERS FOR SOME MODES
(dolist (mode '(org-mode-hook
		term-mode-hook
		;; eshell-mode-hook))
                shell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
	 ("C-x b" . counsel-ibuffer)
	 ("C-x C-f" . counsel-find-file)
	 :map minibuffer-local-map
	 ("C-r" . 'counsel-minibuffer-history))
  :config
  (setq ivy-initial-inputs-alist nil)) ;; Don't start start with ^

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))


(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package all-the-icons
  :if (display-graphic-p)
  :commands all-the-icons-install-fonts
  :init
  (unless (find-font (font-spec :name "all-the-icons"))
    (all-the-icons-install-fonts t)))

(use-package all-the-icons-dired
  :if (display-graphic-p)
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package general
  :config
  (general-create-definer trol/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (trol/leader-keys
    "t" '(:ignore t :which-key "toggles")
    "tt" '(counsel-load-theme :which-key "choose theme")))




(general-define-key
 "C-M-j" 'counsel-switch-buffer)
 ;"M-x" 'amx
 ;"C-s" 'counsel-grep-or-swiper)

;(defun trol/evil-hook ()
 ; (dolist (mode '(custom-mode
;		  eshell-mode
;		  git-rebase-mode
;		  erc-mode
;		  circe-server-mode
;		  circe-chat-mode
;		  circe-query-mode
;		  sauron-mode
;		  term-mode))
;    (add-to-list 'evil-emacs-state-modes mode)))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
;  :hook (evil-mode . trol/evil-hook)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-;") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

  ;; Use visual line motions even outside of visual-line-mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(trol/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))

;; Access icloud:
;; ~/Library/Mobile\ Documents/com~apple~CloudDocs/

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (when (file-directory-p "~/Library/Mobile Documents/com~apple~CloudDocs/Emacs/Projects/Code")
   (setq projectile-project-search-path '("~/Library/Mobile Documents/com~apple~CloudDocs/Emacs/Projects/Code")))
  (setq projectile-switch-project-action #'projectile-dired))

;; Set M-o Options:
(use-package counsel-projectile
  :config (counsel-projectile-mode))

(use-package magit)
;;  :custom
;;  (magit-display-buffer-function #'magit-display-buffer-same-window-execept-dff-v1))

(defun trolorg-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
  (setq evil-auto-indent nil))

;;  :hook (org-mode . trol/org-mode-setup) 
(use-package org
  :config
  (setq org-ellipsis "▾"))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(dolist (face '((org-level-1 . 1.2)
                    (org-level-2 . 1.1)
                    (org-level-3 . 1.05)
                    (org-level-4 . 1.0)
                    (org-level-5 . 1.1)
                    (org-level-6 . 1.1)
                    (org-level-7 . 1.1)
                    (org-level-8 . 1.1)))
      (set-face-attribute (car face) nil :font "Source Code Pro" :weight 'medium :height (cdr face)))
