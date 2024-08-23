;; -*- lexical-binding: t; -*-

(require 'package)
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(package-refresh-contents t)

(require 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; packages

(use-package benchmark-init
  :config
  ;; To disable collection of benchmark data after init is done.
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(use-package ivy
  :config
  (ivy-mode 1))

(use-package counsel
  :config
  (counsel-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-count-format "(%d/%d)"))

(use-package swiper
  :bind
  (("C-s" . 'swiper)))

(use-package company
  :hook
  (prog-mode . global-company-mode)
  :config
  (setq company-minimum-prefix-length 1))

(use-package which-key
  :config
  (which-key-mode))

(use-package projectile
  :config
;  (setq projectile-cache-file (expand-file-name ".cache/projectile.cache" user-emacs-directory))
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map))

(use-package magit)

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :config
  (exec-path-from-shell-initialize))

(use-package vterm)

(use-package evil
  :config
  (evil-mode 1))

(use-package go-mode
  :init
  :config
  (setq gofmt-command "goimports")
  (add-hook 'go-mode-hook
	    (lambda ()
	      (add-hook 'before-save-hook 'gofmt-before-save))))

(use-package rust-mode
  :config
  (setq rust-format-on-save t))

(use-package lsp-mode
  :hook
  ((go-mode . lsp)
   (rust-mode . lsp)
   (lsp-mode . lsp-enable-which-key-integration))
  :init
  (setq lsp-completion-enable t)
  (setq lsp-enable-snippet t)
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package dashboard
  :init
  (setq dashboard-items '((recents   . 10)
			  (projects  . 5)))
  :config
  (dashboard-setup-startup-hook))

(use-package dracula-theme
  :config
  (load-theme 'dracula t))

(provide 'init-packages)
