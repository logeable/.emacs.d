;;; init-straight.el --- init elpa   -*- lexical-binding: t; -*-
;;; Commentary:

;;; Code:
(require 'package)
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(provide 'init-elpa)
;;; init-elpa.el ends here

