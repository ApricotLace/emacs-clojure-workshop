;;; 04-macos.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Evgeny Mukha
;;
;; Author: Evgeny Mukha <https://github.com/ghrp>
;; Maintainer: Evgeny Mukha <profunctorlense@gmail.com>
;; Created: February 11, 2022
;; Modified: February 11, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/ghrp/04-macos
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(add-hook 'window-setup-hook
          (lambda (&optional frame)
            "Re-enable menu-bar-lines in GUI frames."
            (when-let (frame (or frame (selected-frame)))
              (when (display-graphic-p frame)
                (set-frame-parameter frame 'menu-bar-lines 1)))))

(provide '04-macos)
;;; 04-macos.el ends here
