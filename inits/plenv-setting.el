;;; Code:

;; (require 'plenv) ;; for guess-plenv-perl-path
(setenv "PLENV_VERSION" "5.24.0")
(load-file "~/.emacs.d/inits/plenv.d/plenv.el")
(plenv-global "5.24.0")

(require 'flymake)

(defun flymake-perl-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-with-folder-structure))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list (guess-plenv-perl-path) (list "-wc" local-file))))


(push '(".+\\.p[ml]$" flymake-perl-init) flymake-allowed-file-name-masks)
(push '(".+\\.psgi$"  flymake-perl-init) flymake-allowed-file-name-masks)
(push '(".+\\.t$"     flymake-perl-init) flymake-allowed-file-name-masks)
