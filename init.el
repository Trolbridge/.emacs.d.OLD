;; I added this
  ;; Initialize package sources
  (require 'package)
  (setq package-archives '(("melpa" . "https://melpa.org/packages/")
			   ("melpa-stable" . "https://stable.melpa.org/packages/")
			   ("elpa" . "https://elpa.gnu.org/packages/")))

  (package-initialize)
  (unless package-archive-contents
    (package-refresh-contents))

  ;; Initialize use-package on non-linux platforms
  (unless (package-installed-p 'use-package)
    (package-install 'use-package))

   (require 'use-package)
   (setq use-package-always-ensure t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
  (setq inhibit-startup-message t)
  (setq visible-bell t)

  (scroll-bar-mode -1)	; Disable visible scrollbar
  (tool-bar-mode -1)	; Disable the toolbar
  (tooltip-mode -1)	; Disable tooltips
  (set-fringe-mode 10)	; Give some breathing room

  (menu-bar-mode -1)	; Disable the menu bar

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-palenight t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

  ;;---------------------------------------------------------------------------------
  ;; Matching Parenthesis
  ;; By an unknown contributor

  (global-set-key "%" 'match-paren)

  (defun match-paren (arg)
    "Go to the matching paren if on a paren; otherwise insert %."
    (interactive "p")
    (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
          ((looking-at "\\s)") (forward-char 1) (backward-list 1))
          (t (self-insert-command (or arg 1)))))

  ;;---------------------------------------------------------------------------------

(set-face-attribute 'default nil :font "Copperplate" :height 140)
;;  (set-face-attribute 'default nil :font "Source Code Pro" :height 140)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

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

;; Access icloud:
;; ~/Library/Mobile\ Documents/com~apple~CloudDocs/

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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(htmlize visual-fill-column visual-fill-mode magit counsel-projectile projectile prjectile hydra evil-collection evil general all-the-icons-dired helpful counsel-world-clock counsel ivy-rich which-key rainbow-delimiters doom-modeline use-package-hydra ivy command-log-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )




(use-package all-the-icons
  :if (display-graphic-p)
  :commands all-the-icons-install-fonts
  :init
  (unless (find-font (font-spec :name "all-the-icons"))
    (all-the-icons-install-fonts t)))

(use-package all-the-icons-dired
  :if (display-graphic-p)
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(trol/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))

;;(setq org-agenda-start-day "-1d")
(setq org-agenda-span 16)
(setq org-agenda-start-on-weekday nil)
(setq org-image-actual-width nil)

(defun trol/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1))

(use-package org
  :hook (org-mode . trol/org-mode-setup) 
  :config

  (setq org-ellipsis "▾")

  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)

  (setq org-todo-keywords
    '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
      (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(v)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)"))) 

  (setq org-refile-targets
        '(("Archive.org" :maxlevel . 1)
        ("~/OrgRoam/Archives/Archive.org" :maxlevel . 1)
        ("~/OrgRoam/Tasks.org" :maxlevel . 1)
          ("Tasks.org" :maxlevel . 1)))

  ;; Save Org buffers after refiling! 
  (advice-add 'org-refile :after 'org-save-all-org-buffers)



(setq org-tag-alist
      '((:startgroup)
                                        ; Put mutually exclusive tags here
        (:endgroup)
        ("@errand" . ?E)
        ("@home" . ?H)
        ("@work" . ?W)
        ("agenda" . ?a)
        ("plannng" . ?p)
        ("publish" . ?P)
        ("batch" . ?B)
        ("note" . ?n)
        ("idea" . ?i)
        ("thinking" . ?t)
        ("recurring" . ?r)))


;;---------------------------------------------------------------------------------
;; Configure custom agenda views
(setq org-agenda-custom-commands
  '(("d" "Dashboard"
     ((agenda "" ((org-deadline-warning-days 7)))
      (todo "NEXT"
        ((org-agenda-overriding-header "Next Tasks")))
      (tags-todo "agenda/ACTIVE" ((org-agenda-overriding-header "Active Projects")))))

    ("n" "Next Tasks"
     ((todo "NEXT"
        ((org-agenda-overriding-header "Next Tasks")))))


    ("w" "Work Tasks" tags-todo "@work")
;;    ("W" "Work Tasks" tags-todo "+work-email")

    ;; Low-effort next actions
    ("e" tags-todo "+TODO=\"NEXT\"+Effort<15&+Effort>0"
     ((org-agenda-overriding-header "Low Effort Tasks")
      (org-agenda-max-todos 20)
      (org-agenda-files org-agenda-files)))

    ("W" "Workflow Status"
     ((todo "WAIT"
            ((org-agenda-overriding-header "Waiting on External")
             (org-agenda-files org-agenda-files)))
      (todo "REVIEW"
            ((org-agenda-overriding-header "In Review")
             (org-agenda-files org-agenda-files)))
      (todo "PLAN"
            ((org-agenda-overriding-header "In Planning")
             (org-agenda-todo-list-sublevels nil)
             (org-agenda-files org-agenda-files)))
      (todo "BACKLOG"
            ((org-agenda-overriding-header "Project Backlog")
             (org-agenda-todo-list-sublevels nil)
             (org-agenda-files org-agenda-files)))
      (todo "READY"
            ((org-agenda-overriding-header "Ready for Work")
             (org-agenda-files org-agenda-files)))
      (todo "ACTIVE"
            ((org-agenda-overriding-header "Active Projects")
             (org-agenda-files org-agenda-files)))
      (todo "COMPLETED"
            ((org-agenda-overriding-header "Completed Projects")
             (org-agenda-files org-agenda-files)))
      (todo "CANC"
            ((org-agenda-overriding-header "Cancelled Projects")
             (org-agenda-files org-agenda-files))))))))

;;---------------------------------------------------------------------------------

(require 'org-habit)
(add-to-list 'org-modules 'org-habit)
(setq org-habit-graph-column 60)


  (setq org-agenda-files
        '("~/TODO/Task2.org"))
        ;; '("~/.emacs.d/OrgFiles/Birthdays.org"
        ;; "~/.emacs.d/OrgFiles/Habits.org"
          ;; "~/.emacs.d/OrgFiles/Tasks.org"))

(setq org-capture-templates
  `(("t" "Tasks / Projects")
    ("tt" "Task" entry (file+olp "~/Projects/Emacs/OrgFiles/Tasks.org" "Inbox")
         "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1)
    ("ts" "Clocked Entry Subtask" entry (clock)
         "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1)

    ("j" "Journal Entries")
    ("jj" "Journal" entry
         (file+olp+datetree "~/Projects/Emacs/OrgFiles/Journal.org")
         "\n* %<%I:%M %p> - Journal :journal:\n\n%?\n\n"
         ;; ,(trol/read-file-as-string "~/Notes/Templates/Daily.org")
         :clock-in :clock-resume
         :empty-lines 1)
    ("jm" "Meeting" entry
         (file+olp+datetree "~/Projects/Emacs/OrgFiles/Journal.org")
         "* %<%I:%M %p> - %a :meetings:\n\n%?\n\n"
         :clock-in :clock-resume
         :empty-lines 1)

    ("w" "Workflows")
    ("we" "Checking Email" entry (file+olp+datetree "~/Projects/Emacs/OrgFiles/Journal.org")
         "* Checking Email :email:\n\n%?" :clock-in :clock-resume :empty-lines 1)

    ("m" "Metrics Capture")
    ("mw" "Weight" table-line (file+headline "~/Projects/Emacs/OrgFiles/Metrics.org" "Weight")
     "| %U | %^{Weight} | %^{Notes} |" :kill-buffer t)))

(define-key global-map (kbd "C-c j")
  (lambda () (interactive) (org-capture nil "jj")))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

;; Replace list hyphen with dot
 (font-lock-add-keywords 'org-mode
                         '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(require 'org-faces)
(dolist (face '((org-level-1 . 1.2)
                    (org-level-2 . 1.1)
                    (org-level-3 . 1.05)
                    (org-level-4 . 1.0)
                    (org-level-5 . 1.1)
                    (org-level-6 . 1.1)
                    (org-level-7 . 1.1)
                    (org-level-8 . 1.1)))
      (set-face-attribute (car face) nil :font "Source Code Pro" :weight 'medium :height (cdr face)))

;; Ensure that anything that should be fixed-pitch in Org files appears that way
(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
(set-face-attribute 'org-table nil  :inherit 'fixed-pitch)
(set-face-attribute 'org-formula nil  :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
;;(set-face-attribute 'org-indent nil :inherit '(org-hide fixed-pitch))
(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)


(defun trol/org-mode-visual-fill ()
  (setq visual-fill-column-width 168
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))


(use-package visual-fill-column
  :defer t
  :hook (org-mode . trol/org-mode-visual-fill))

(require 'ob-js)
;  (require 'ob-go)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (js . t)
     (ruby . t)
;     (go . t)
     (python . t)))


  (push '("conf-unix" . conf-unix) org-src-lang-modes)



  ;; This is needed as of Org 9.2
  (require 'org-tempo)
  (org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp :results echo"))
  (add-to-list 'org-structure-template-alist '("py" . "src python :results output"))
  (add-to-list 'org-structure-template-alist '("js" . "src js :results output"))
  (add-to-list 'org-structure-template-alist '("ht" . "src html :results output"))
  (add-to-list 'org-structure-template-alist '("rb" . "src ruby :results output"))
  (add-to-list 'org-structure-template-alist '("go" . "src go :results output"))

  (setq org-confirm-babel-evaluate nil)

;; Automatically tangle our Emacs.org config file when we save it
(defun trol/org-babel-tangle-config ()
  (when (string-equal (buffer-file-name)
                      (expand-file-name "~/.emacs.d/OrgFiles/Emacs.org"))
    ;; Dynamic scoping to the rescue
    (let ((org-confirm-babel-evaluate nil))
      (org-babel-tangle))))

(add-hook 'org-mode-hook (lambda () (add-hook 'after-save-hook #'trol/org-babel-tangle-config)))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))

(defun trol/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  ;; :commands (lsp lsp-deferred)
  ;; :commands (lsp lsp-deferred)
  :hook (lsp-mode . trol/lsp-mode-setup)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t))

(use-package htmlize)

(use-package web-mode
    :ensure t
    :mode "\\.html\\'"
    :hook (web-mode . lsp-deferred)
    :config
    (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
    (setq web-mode-engines-alist
          '(("django" . "\\.html\\'")))
    (setq web-mode-ac-sources-alist
          '(("css" . (ac-source-csss-property))
            ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
    (setq web-mode-enable-auto-quoting t)
    (setq web-mode-enable-auto-closing t))

  (use-package emmet-mode)

  (add-to-list 'load-path "~/emacs.d/emmet-mode")
  (require 'emmet-mode)

  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

  (use-package simple-httpd)
  (require 'simple-httpd)
  ;;(setq httpd-root "/var/www")
  (setq httpd-root "~/.emacs.d/sss")
;;  (httpd-start)


  (use-package js2-mode)


  (use-package skewer-mode)
  ;;       (add-hook 'js2-mode-hook 'skewer-mode)
  ;;      (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode)


  (use-package impatient-mode)

  (add-to-list 'load-path "~/.emacs.d/impatient-mode")
  (require 'impatient-mode)

(use-package typescript-mode
  :mode "\\.js\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

(use-package company

      :after lsp-mode
      :hook (lsp-mode . company-mode)
      :bind (:map company-active-map
                  ("<tab>" . company-complete-selection))
                (:map lsp-mode-map
                 ("<tab>" . company-indent-or-complete-common))
     :custom
     (company-minimum-prefix-length 1)
   (company-idle-delay 0.0))

      (setq company-idle-delay 0.0
            company-minimum-prefix-length 1)
;;      (setq company-show-numbers t)
    ;; (after! company
    ;; (setq company-idle-delay 0.0
    ;;       company-minimum-prefix-length 1)
    ;; (setq company-show-numbers t)
    ;; (add-hook 'evil-normal-state-entry-hook #'-abort)) ;; make aborting less annoying.



    (add-hook 'after-init-hook 'global-company-mode)

        (use-package company-box
          :hook (company-mode . company-box-mode))

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

;; (cl-defmacro lsp-org-babel-enable (lang)
;;   "Support LANG in org source code block."
;;   (setq centaur-lsp 'lsp-mode)
;;   (cl-check-type lang stringp)
;;   (let* ((edit-pre (intern (format "org-babel-edit-prep:%s" lang)))
;;          (intern-pre (intern (format "lsp--%s" (symbol-name edit-pre)))))
;;     `(progn
;;        (defun ,intern-pre (info)
;;          (let ((file-name (->> info caddr (alist-get :file))))
;;            (unless file-name
;;              (setq file-name (make-temp-file "babel-lsp-")))
;;            (setq buffer-file-name file-name)
;;            (lsp-deferred)))
;;        (put ',intern-pre 'function-documentation
;;             (format "Enable lsp-mode in the buffer of org source block (%s)."
;;                     (upcase ,lang)))
;;        (if (fboundp ',edit-pre)
;;            (advice-add ',edit-pre :after ',intern-pre)
;;          (progn
;;            (defun ,edit-pre (info)
;;              (,intern-pre info))
;;            (put ',edit-pre 'function-documentation
;;                 (format "Prepare local buffer environment for org source block (%s)."
;;                         (upcase ,lang))))))

;;     (defvar org-babel-lang-list
;;   '("go" "python" "ipython" "bash" "sh" "typescript" "javascript"))
;;     (dolist (lang org-babel-lang-list)
;;       (eval `(lsp-org-babel-enable ,lang)))

(use-package magit)
;;  :custom
;;  (magit-display-buffer-function #'magit-display-buffer-same-window-execept-dff-v1))

;;  (defvar my-linum-current-line-number 0)

;; (setq linum-format 'my-linum-relative-line-numbers)

;; (defun my-linum-relative-line-numbers (line-number)
;;   (let ((test2 (- line-number my-linum-current-line-number)))
;;     (propertize
;;      (number-to-string (cond ((<= test2 0) (* -1 test2))
;;                              ((> test2 0) test2)))
;;      'face 'linum)))

;; (defadvice linum-update (around my-linum-update)
;;   (let ((my-linum-current-line-number (line-number-at-pos)))
;;     ad-do-it))
;; (ad-activate 'linum-update)

;; (global-linum-mode t)

(use-package org-roam
     :ensure t
     :init
     (setq org-roam-v2-ack t)
     :custom
     ;; (org-roam-directory "~/.emacs.d/OrgRoam")
     (org-roam-directory "~/OrgRoam")
     (org-roam-completion-everywhere t)
     :bind (("C-c n l" . org-roam-buffer-toggle)
            ("C-c n f" . org-roam-node-find)
            ("C-c n i" . org-roam-node-insert)
     :map org-mode-map
     ("C-M-i" . completion-at-point))
     :config
     (org-roam-setup))

;; via http://www.emacswiki.org/emacs/ThesauriAndSynonyms
;; The file names are absolute, not relative, locations
;;     - e.g. /foobar/mthesaur.txt.cache, not mthesaur.txt.cache

;; (use-package synonyms)
;;   :ensure t ;; install package if not found
;;   :init ;; executed before loading package
;;   (setq synonyms-file        "~/.emacs.d/data/mthes10/mthesaur.txt")
;;   (setq synonyms-cache-file  "~/.emacs.d/data/mycachefile")
;;   :config
;;   (defun my-synonym-current-word ()
;;     "Lookup synonyms for current word."
;;     (interactive)
;;     (synonyms-lookup (thing-at-point 'word) nil nil))
;;   :bind (:map my-map ("s" . my-synonym-current-word))
;; )

(use-package helm
:ensure t
:config)
