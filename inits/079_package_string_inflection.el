(use-package string-inflection
  :init (el-get-bundle string-inflection)
  :config
  (global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)

  (defalias 'snake-case       'string-inflection-underscore-function)  ; EmacsLisp  => emacs_lisp
  (defalias 'pascal-case      'string-inflection-pascal-case-function) ; emacs_lisp => EmacsLisp
  (defalias 'camel-case       'string-inflection-camelcase-function)   ; emacs_lisp => emacsLisp
  (defalias 'upper-snake-case 'string-inflection-upcase-function)      ; emacs_lisp => EMACS_LISP
  (defalias 'kebab-case       'string-inflection-kebab-case-function)  ; emacs_lisp => emacs-lisp
)

