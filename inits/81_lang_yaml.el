(el-get-bundle yaml-mode)
(use-package yaml-mode)

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))