(defun zand (x1 x2)
  (let ((w1 0.5)
        (w2 0.5)
        (theta 0.7))
    (if (<= (+ (* x1 w1) (* x2 w2)) theta)
        0
        1)))
