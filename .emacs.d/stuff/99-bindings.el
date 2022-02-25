(general-create-definer leader-def
  :states 'motion
  :keymaps 'override
  :prefix "SPC")

(leader-def
  "f" '(:ignore t :which-key "file")
  "f f" '(find-file :which-key "find file")
  "f s" '(save-buffer :which-key "save file")) 

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
  "k r" '(sp-raise-sexp :which-key "raise sexp")
  "k y" '(sp-copy-sexp :which-key "copy sexp")) 

(leader-def
  "w" '(:ignore t :which-key "window")
  "w v" '(evil-window-vsplit :which-key "split vertically")
  "w s" '(evil-window-split :which-key "split horizontally")
  "w k" '(evil-window-up :which-key "focus ↑")
  "w h" '(evil-window-left :which-key "focus ←")
  "w j" '(evil-window-down :which-key "focus ↓")
  "w l" '(evil-window-right :which-key "focus →")
  "w d" '(delete-window :which-key "delete window"))

(general-define-key
 :keymaps 'ivy-mode-map
 "C-j" 'ivy-next-line
 "C-k" 'ivy-previous-line) 

(when nil
  (setq which-key-idle-delay 0.5)
  (setq which-key-idle-secondary-delay 0)
  )
