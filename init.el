;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 140))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-straight)
(require 'init-keys)
(require 'init-defaults)
(require 'init-plugins)
(require 'init-theme)
(require 'init-custom)

;; custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
;;; init.el ends here
