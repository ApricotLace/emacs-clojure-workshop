;;; package --- Summary
;;; Commentary:

;;; Code:
(use-package company
  :ensure t
  :hook ((emacs-lisp-mode clojure-mode) . company-mode)
  )

(provide '11-company)
;;; 11-company.el ends here
