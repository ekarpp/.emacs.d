(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2)))

(add-hook 'c-mode-hook (lambda ()
                         (setq c-basic-offset 4)))

(provide 'hooks)
;;; base ends here
