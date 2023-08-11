(setq dice-regex "\\([0-9]*\\)[dD]\\([0-9]+\\)")

(defun roll-dice (input)
  (interactive "Mdice: ")
  (save-match-data (if (string-match dice-regex input)
                       (progn (message "You want to roll %s %s-sided dice."
                                       (match-string 1 input)
                                       (match-string 2 input)))
                     (message "That is not a valid dice string."))))
