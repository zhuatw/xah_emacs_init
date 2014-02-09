;; -*- coding: utf-8 -*-

(global-set-key (kbd "C-1") 'cycle-font-backward)
(global-set-key (kbd "C-2") 'cycle-font-forward)
(global-set-key (kbd "C-3") 'cycle-font-2)
(global-set-key (kbd "C-4") nil)
(global-set-key (kbd "C-5") nil)
(global-set-key (kbd "C-6") 'xah-cycle-camel-style-case)
(global-set-key (kbd "C-7") 'xah-previous-user-buffer)
(global-set-key (kbd "C-8") 'xah-next-user-buffer)
(global-set-key (kbd "C-9") nil)

(global-set-key (kbd "C-&") 'xah-previous-emacs-buffer)
(global-set-key (kbd "C-*") 'xah-next-emacs-buffer)

(progn
  (require 'ido)
  (define-key ido-file-completion-map (kbd "C-o") 'ido-fallback-command))

;; ;; (global-set-key (kbd "C-a") nil) ; select all
;; (global-set-key (kbd "C-b") nil)
;; ;; (global-set-key (kbd "C-c") nil) ; mode specific
;; (global-set-key (kbd "C-d") nil)
;; (global-set-key (kbd "C-e") nil)
;; ;; (global-set-key (kbd "C-f") nil) ; find
;; ;; (global-set-key (kbd "C-g") nil) ; cancel
;; ;; (global-set-key (kbd "C-h") nil) ; help
;; ;; (global-set-key (kbd "C-i") nil) ; tab
;; ;; (global-set-key (kbd "C-j") nil) ; newline
;; (global-set-key (kbd "C-k") nil)
;; (global-set-key (kbd "C-l") nil)
;; ;; (global-set-key (kbd "C-m") nil) ; return
(global-set-key (kbd "C-S-n") 'make-frame-command) ; new
(global-set-key (kbd "C-n") 'xah-new-empty-buffer) ; new
(global-set-key (kbd "C-o") 'find-file) ; open
;; (global-set-key (kbd "C-p") nil)
;; ;; (global-set-key (kbd "C-q") nil) ; quote
;; (global-set-key (kbd "C-r") nil)
;; (global-set-key (kbd "C-s") nil)
;; (global-set-key (kbd "C-t") nil)
;; (global-set-key (kbd "C-u") nil)
;; (global-set-key (kbd "C-v") nil)
;; ;; (global-set-key (kbd "C-w") nil) ; close
;; ;; (global-set-key (kbd "C-x") nil) C-x
;; ;; (global-set-key (kbd "C-y") nil)
(global-set-key (kbd "C-z") 'undo)

;(global-set-key (kbd "C-o") 'backward-sexp)
;(global-set-key (kbd "C-u") 'forward-sexp)
;(global-set-key (kbd "C-e") 'down-list)
;(global-set-key (kbd "C-.") 'backward-up-list)

;(global-unset-key (kbd "C-+") )         ; text-scale-increase
;(global-unset-key (kbd "C--") )         ; text-scale-decrease
;(global-unset-key (kbd "C-a") )         ; mark-whole-buffer
;(global-unset-key (kbd "C-s") )         ; save
;(global-unset-key (kbd "C-o") )         ; open
;(global-unset-key (kbd "C-0") ) ; text-scale-normal-size
;(global-unset-key (kbd "M-5") )
;(global-unset-key (kbd "M-3") )
;(global-unset-key (kbd "M-4") )
;(global-unset-key (kbd "M--") )
;(global-unset-key (kbd "M-%") )
;(global-unset-key (kbd "M-l") )         ; recenter-top-bottom
;(global-unset-key (kbd "M-0") )         ; delete-window
;(global-unset-key (kbd "C-S-t") )       ; xah-open-last-closed
;(global-unset-key (kbd "C-u") )       ; universal-argument
