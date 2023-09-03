;; -*- lexical-binding: t; -*-


(setq org-directory (file-truename "~/org/"))

(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)
