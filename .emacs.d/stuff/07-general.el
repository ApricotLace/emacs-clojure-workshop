(use-package general
  :ensure t)
(use-package esup
  :ensure t
  ;; To use MELPA Stable use ":pin melpa-stable",
  :pin melpa)

(when nil
  (general-evil-setup)

  (general-create-definer leader-def
    :states 'motion
    :keymaps 'override
    :prefix "SPC")

  (leader-def
    "f" 'find-file)

  (general-create-definer lisp-definer
    :states '(emacs normal hybrid motion visual operator)
    :wrapping leader-def
    :prefix-map 'lisp-definer-prefix-map
    :infix "k"
    :wk-full-keys nil
    "" '(:ignore t))

  (lisp-definer
    "c" 'sp-wrap-curly)

  (general-create-definer wrap-definer
    :keymaps 'lisp-definer-prefix-map
    :states '(emacs normal hybrid motion visual operator) ; 'motion
    :wrapping lisp-definer
    :infix "q"
    :wk-full-keys nil
    "" '(:ignore t))

  (wrap-definer
    "[" 'sp-wrap-square)

  (general-define-key
   :keymaps 'lisp-definer-prefix-map
   "e" 'sp-wrap-square)



  )
