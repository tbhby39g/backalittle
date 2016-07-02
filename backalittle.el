;;; backalittle.el --- When you write parentheses, the point moves to inside the parentheses

;; Copyright (C) 2016  tbhby39

;; Author: tbhby39
;; Keywords: parentheses

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; When you write parentheses, the point moves to the inside of the parentheses.
;; Nothing happens only wrote the opening or closing parenthesis.
;; It supports not only (), but also [], {}, "", '', <>.

;;; Code:

(defvar tbhby39-pair-alist
  '((?\).?\()
    (?\}.?\{)
    (?\].?\[)
    (?\".?\")
    (?\'.?\')
    (?\>.?\<)
    ) "pair alist")

(defun backalittle ()
  (interactive)
  (if (and (not (bolp))
       (char-equal (char-before) (cdr (assoc last-command-event tbhby39-pair-alist))) )
      (progn 
        (self-insert-command 1)
        (backward-char))
    (self-insert-command 1))    
  )

(global-set-key ")" 'backalittle)
(global-set-key "]" 'backalittle)
(global-set-key "}" 'backalittle)
(global-set-key "\"" 'backalittle)
(global-set-key "'" 'backalittle)
(global-set-key ">" 'backalittle)

(provide 'backalittle)
;;; backalittle.el ends here
