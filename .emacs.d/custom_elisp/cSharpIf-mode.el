
;;; c#if.el --- Creates a minor mode for if-statement insertion  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Reese De Wind

;; Author: Reese De Wind <DewReese@Reeses-MBP.att.net>
;; Keywords: convenience

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

;; provides a simple framwork for if-statements in c# code. When this minor mode is activated a skeleton is laid out at the current cursor point and using <enter> moves to the next section that needs filling out.

;;; Code:
(make-variable-buffer-local
 (defvar current-spot 0 "positions moved in if statement")
 )

(make-variable-buffer-local
 (defvar pointList '() "list of points contained for movement"
   )
 )

(defun exit-if ()
  (interactive)
  (cSharpIf-mode 0)
  )

(defun pushPoint ()
  (setf pointList (append pointList (list(point-marker))))
  )

(defun move-if ()
  (interactive)
  (when (> current-spot 1)
    (newline-and-indent)
    )
  (when (<= current-spot 1)
    (goto-char (marker-position (nth current-spot pointList)))
    (setf current-spot (+ 1 current-spot))	
    )
  )
      
(define-minor-mode cSharpIf-mode
  "Toggle cSharpIf mode.
Interactively with no argument, this command toggles the mode.
A positive prefix argument enables the mode, any other prefix
argument disables it.  From Lisp, argument omitted or nil enables
the mode, `toggle' toggles the state."

  ;; The initial value.
  :init-value nil
  ;; The indicator for the mode line.
  :lighter " cSharpIf"
  ;; The minor mode bindings.
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "<C-return>") 'exit-if)
	    (define-key map (kbd "<return>") 'move-if)
            map)
  ;;if mode is being called, create if statement, otherwise put cursor after if

  (if cSharpIf-mode
      (progn
	(insert "if(")
	(pushPoint)
	(insert "){")
	(newline-and-indent)
	(pushPoint)
	(insert "\n}")
	(indent-according-to-mode)
	(move-if)
	)
    (progn
      (search-forward "}")
      (insert "\n")
      (indent-according-to-mode)
      (setf current-spot 0)
      (setf pointList '())
      )
    )
  )



(provide 'cSharpIf-mode)
;;; c#if.el ends here