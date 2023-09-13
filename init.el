;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-keys)
(require 'init-defaults)
(require 'init-plugins)
(require 'init-org)
(require 'init-ui)


(require 'init-custom)
;;; init.el ends here
