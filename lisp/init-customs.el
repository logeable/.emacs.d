;; -*- lexical-binding: t; -*-

(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

(global-display-line-numbers-mode 1)
(tool-bar-mode -1)
(setq-default tab-width 4)

(provide 'init-customs)
