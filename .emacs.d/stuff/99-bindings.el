(general-create-definer leader-def
  :states 'motion
  :keymaps 'override
  :prefix "SPC")

(leader-def
  "f" '(:ignore t :which-key "file")
  "f f" ('find-file :which-key "find file"))

(leader-def
  "k" '(:ignore t :which-key "sexp")
  "k w" '(sp-wrap-round :which-key "wrap ()")
  "k [" '(sp-wrap-square :which-key "wrap []")
  "k {" '(sp-wrap-square :which-key "wrap {}")
  "k ," '(sp-forward-barf-sexp :which-key "<-)")
  "k ." '(sp-forward-slurp-sexp :which-key ")->")
  "k <" '(sp-backward-barf-sexp :which-key "<-(")
  "k >" '(sp-forward-barf-sexp :which-key "(->")
  "k d" '(sp-kill-sexp :which-key "delete sexp")
  "k r" '(sp-raise-sexp :which-key "raise sexp"))

(leader-def
  "w" '(:ignore t :which-key "window")
  "w v" '(evil-window-vsplit :which-key "split vertically")
  "w w" '(evil-window-top :which-key "focus ↑")
  "w a" '(evil-window-top :which-key "focus →")
  "w s" '(evil-window-top :which-key "focus ↓")
  "w d" '(evil-window-top :which-key "focus →")

  )
(when nil
  (setq which-key-idle-delay 0.5)
  (setq which-key-idle-secondary-delay 0)
  )
