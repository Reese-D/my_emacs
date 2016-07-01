;;; repeat.el --- When toggled, watches all keystrokes, and then when toggled off, repeats everything it watched  -*- lexical-binding: t; -*-

;; Copyright (C) 2016  Reese De Wind

;; Author: Reese De Wind <DewReese@Reeses-MBP.att.net>
;; Keywords: files, tools

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

;; 

;;; Code:

(defun start-dribble-file ()
  (open-dribble-file (expand-file-name "~/.emacs.d/lossage.txt"))
  )

(defun get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents filePath)
    (buffer-string)
    )
  )

(define-minor-mode repeat
  "watches keystrokes in order to repeat them."
  :init-value nil
  :lighter "._a"
  :keymap nil
  (if repeat
      (start-dribble-file)
    (progn
      (call-interactively
       (global-key-binding
	(get-string-from-file (expand-file-name  "~/.emacs.d/lossage.txt"))))
      )
    )
  )

(provide 'repeat)
;;; repeat.el ends here

