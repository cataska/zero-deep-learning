(defun zand (x1 x2)
  (let ((w1 0.5)
        (w2 0.5)
        (theta 0.7))
    (if (<= (+ (* x1 w1) (* x2 w2)) theta)
        0
        1)))

(defun list-* (lst1 lst2)
  (mapcar #'* lst1 lst2))

(defun sum (lst)
  (reduce #'+ lst))

(defun zand (x1 x2)
  (let ((x (list x1 x2))
        (w (list 0.5 0.5))
        (b -0.7))
    (if (<= (+ b (sum (list-* w x))) 0)
        0 1)))

(defun znand (x1 x2)
  (let ((x (list x1 x2))
        (w (list -0.5 -0.5))
        (b 0.7))
    (if (<= (+ b (sum (list-* w x))) 0)
        0 1)))

(defun zor (x1 x2)
  (let ((x (list x1 x2))
        (w (list 0.5 0.5))
        (b -0.2))
    (if (<= (+ b (sum (list-* w x))) 0)
        0 1)))

(defun zxor (x1 x2)
  (let ((s1 (znand x1 x2))
        (s2 (zor x1 x2)))
    (zand s1 s2)))
