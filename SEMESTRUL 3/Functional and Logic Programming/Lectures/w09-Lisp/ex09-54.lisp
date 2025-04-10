(defun ins (e n l)
  (cond
    ((= n 1) (cons e l))
    (t (cons (car l) (ins e (- n 1) (cdr l))))
  )
)

(defun insert (e n l)
  (cond
    ((= n 0) nil)
    (t (cons (ins e n l) (insert e (- n 1) l)))
  )
)

(defun insertion (e l)
  (insert e  (+ (length l) 1)  l)
)

(defun insertall (e l)
  (cond 
    ((null l) ())
    (t (append (insertion e (car l)) (insertall e (cdr l))))
  )
)
  
(defun permutations (l)
  (cond
    ((null l) '(()))
    (t (insertall (car l) (permutations (cdr l))))
  )
)