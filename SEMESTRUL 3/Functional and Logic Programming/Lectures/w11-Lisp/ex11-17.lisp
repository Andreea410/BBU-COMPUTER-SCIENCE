(DEFUN CARTESIAN (L1 L2)
	(MAPCAN #'(LAMBDA (X) 
		(MAPCAR #'(LAMBDA (Y)
			(LIST X Y)
		) L2)
	) L1)
)