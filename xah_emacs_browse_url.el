;; -*- coding: utf-8 -*-
;; part of Xah Lee's emacs init file.
;; 2014-04-24
;; Xah Lee,
;; ∑ http://xahlee.org/

(defun xah-browse-url-of-buffer ()
  "Similar to `browse-url-of-buffer' but visit xahlee.org.

save the file first.
Then, if `universal-argument' is called, visit the corresponding xahsite URL.
For example, if current buffer is of this file:
 ~/web/xahlee_info/index.html
then after calling this function,
default browser will be launched and opening this URL:
 http://xahlee.info/index.html"
  (interactive)
  (let (ξurl)
    (setq ξurl
          (if current-prefix-arg
              (xahsite-filepath-to-url (buffer-file-name))
            (buffer-file-name)))

    (when (buffer-modified-p ) 
      (xah-clean-whitespace-and-save (point-min) (point-max))
      (save-buffer))
    (message "browsing %s" ξurl)
    (cond
     ((string-equal system-type "windows-nt") ; Windows
      (when (string-match "^c:/" ξurl) (setq ξurl (concat "file:///" ξurl)))
      (browse-url ξurl))
     ((string-equal system-type "gnu/linux")
      (let ( (process-connection-type nil))
        (start-process "" nil "setsid" "firefox" (concat "file://" buffer-file-name )))
      ;; (shell-command "xdg-open .") ;; 2013-02-10 this sometimes froze emacs till the folder is closed. ⁖ with nautilus
      )
     ;; ((string-equal system-type "gnu/linux")
     ;;  (start-process "xahbrowse"
     ;;                 nil "setsid"
     ;;                 "firefox"
     ;;                 (concat "file://" buffer-file-name )))
     ((string-equal system-type "darwin") ; Mac
      (browse-url ξurl )))))

(defun xah-browse-url-of-buffer-firefox ()
  "Same as `browse-url-of-buffer' but using Firefox.
You need Firefox's path in the path environment variable within emacs.
e.g.
 (setenv \"PATH\" (concat \"C:/Program Files (x86)/Mozilla Firefox/\" \";\" (getenv \"PATH\") ) )
On Mac OS X, you don't need to. This command makes this shell call:
 「open -a Firefox.app http://example.com/」"
  (interactive)
  (progn
    (cond
     ((string-equal system-type "windows-nt") ; Windows
      (shell-command (concat "firefox file://" buffer-file-name)))
     ((string-equal system-type "gnu/linux")
      (shell-command (concat "setsid firefox file://" buffer-file-name " &")))
     ((string-equal system-type "darwin") ; Mac
      (shell-command (concat "open -a Firefox.app file://" buffer-file-name))))))

(defun xah-browse-url-Google-Chrome (φuri)
  "Same as `browse-url' but using Google Chrome."
  (interactive)
  (progn
    (shell-command (concat "chrome " φuri))))

(defun xah-browse-url-of-buffer-firefox-2 ()
  "Same as `browse-url-of-buffer' but using Firefox.
You need to have the firefox path in `exec-path'. e.g.:
 (add-to-list 'exec-path \"c:/Program Files (x86)/Mozilla Firefox/\")"
  (interactive)
  (progn
    (require 'browse-url)
    (browse-url-firefox (concat "file:///" buffer-file-name))))
