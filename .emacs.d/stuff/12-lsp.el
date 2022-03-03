;;; 12-lsp --- lsp mode for emacs
;;; Commentary:
;; Set up lsp for Emacs
;;; Code:

(use-package lsp-mode
  :ensure t
  :hook (clojure-mode . lsp))

(provide '12-lsp)
;;; 12-lsp.el ends here
