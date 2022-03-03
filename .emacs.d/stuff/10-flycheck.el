(use-package flycheck
  :ensure t
  :hook ((emacs-lisp-mode clojure-mode) . flycheck-mode))
