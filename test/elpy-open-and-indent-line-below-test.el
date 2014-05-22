(ert-deftest elpy-open-and-indent-line-below ()
  (elpy-testcase ()
    (python-mode)
    (elpy-mode 1)
    (insert "def foo():\n")
    (goto-char 2)
    (elpy-open-and-indent-line-below)
    (should (equal (buffer-string)
                   "def foo():\n    \n"))
    (should (equal (point) (- (point-max)
                              1)))))