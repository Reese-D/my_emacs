;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_stencil_clear_tag

(defconstant +stencil-tag-bits-ext+ #x88F2) 
(defconstant +stencil-clear-tag-value-ext+ #x88F3) 
(defconstant +max-program-exec-instructions-nv+ #x88F4) 
(defconstant +max-program-call-depth-nv+ #x88F5) 
(defconstant +stencil-tag-bits-ext+ #x88F2) 
(defconstant +stencil-clear-tag-value-ext+ #x88F3) 
(defglextfun "StencilClearTagEXT" stencil-clear-tag-ext :return "void" :args
 ((:name |stencilTagBits| :type |SizeI| :direction :in)
  (:name |stencilClearTag| :type |UInt32| :direction :in))
 :category "EXT_stencil_clear_tag" :deprecated nil :version "1.5") 
(make-extension-loader |EXT_stencil_clear_tag|
 (("StencilClearTagEXT" stencil-clear-tag-ext :return "void" :args
   ((:name |stencilTagBits| :type |SizeI| :direction :in)
    (:name |stencilClearTag| :type |UInt32| :direction :in))
   :category "EXT_stencil_clear_tag" :deprecated nil :version "1.5"))) 
