(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

(when (maybe-require-package 'elpy-enable)
  (after-load 'python
    (add-hook 'python-mode-hook 'elpy-enable)))

(provide 'init-python)
