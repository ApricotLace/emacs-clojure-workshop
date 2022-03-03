(general-create-definer leader-def
  :states 'motion
  :keymaps 'override
  :prefix "SPC")

(leader-def
  "f" '(:ignore t :which-key "file")
  "f f" '(counsel-find-file :which-key "find file")
  "f s" '(save-buffer :which-key "save file")) 

(leader-def
  "/" 'counsel-grep)

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

(leader-def
  :keymaps 'emacs-lisp-mode-map
  "m" '(:ignore t :which-key "emacs lisp")
  "m e" '(:ignore t :which-key "eval")
  "m e e" 'eval-last-sexp
  "m e b" 'eval-buffer)

(leader-def
  :keymaps 'clojure-mode-map
  "m" '(:ignore t :which-key "clojure")
  "m e" '(:ignore t :which-key "eval")
  "m e e" 'cider-eval-last-sexp
  "m c" 'cider-connect-clj
  "m e b" 'cider-eval-buffer)

(leader-def
  "b" '(:ignore t :which-key "buffer")
  "b b" '(ivy-switch-buffer :which-key "switch buffer")
  "b l" '(evil-switch-to-windows-last-buffer :which-key "last buffer"))

(general-define-key
 "<escape>" 'keyboard-escape-quit)

(leader-def
  ;;"p" 'projectile-command-map
  "p" '(:ignore t :which-key "project")
  "p f" '(projectile-find-file :which-key "find file in project")
  "p p" '(projectile-switch-project :which-key "switch project"))


(setq which-key-idle-delay 0.5)
(setq which-key-idle-secondary-delay 0)
