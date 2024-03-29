;; Add your custom functions here

(defun indent ()
  (indent-relative)
  (indent-for-tab-command)
)


;int main(void)
;{
;
;}
(defun bracks-better ()
  (interactive)
  (insert "{}")
  (backward-char 2)
  (newline)
  (indent-for-tab-command)
  (forward-char)
  (newline 2)
  (indent-for-tab-command)
  (forward-line -1)
  (indent-for-tab-command)
)

;int main(void){
;
;}
(defun bracks-worse ()
  (interactive)
  (insert "{}")
  (backward-char)
  (newline 2)
  (indent-for-tab-command)
  (forward-line -1)
  (indent-for-tab-command)
)

(defun comment-in-c ()
  (interactive)
  (insert "/*  */")
  (backward-char 3)
)


(provide 'base-functions)
