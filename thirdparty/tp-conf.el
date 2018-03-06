;;(setq TP_HOME (file-name-directory buffer-file-name))
(setq TP_HOME "~/.emacs.d/thirdparty/")

(defun tp-load-directory (dir)
  (setq dir (concat TP_HOME dir "/"))
  (let (
	(load-it (lambda (f)
       (load-file (concat dir f)))
     ))
     (mapc load-it (directory-files dir nil "\\.el$")))
   )

;;(tp-load-directory "dired-hacks")
(add-to-list 'load-path (concat TP_HOME "dired-hacks"))
;;(require 'dired-avfs)

;;(require 'dired-collapse)
;;(require 'dired-columns)
(require 'dired-filter)
;;;;(require 'dired-hacks-utils)
;;(require 'dired-images)
;;(require 'dired-list)
;;(require 'dired-narrow)
;;(require 'dired-open)
;;(require 'dired-rainbow)
;;(require 'dired-ranger)
(require 'dired-subtree)
;;(require 'dired-tagsistant)

(add-to-list 'load-path (concat TP_HOME "tern/emacs"))
(autoload 'tern-mode "tern.el" nil t)
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))
