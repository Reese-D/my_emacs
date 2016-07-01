;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_draw_range_elements

(defconstant +max-elements-vertices-ext+ #x80E8) 
(defconstant +max-elements-indices-ext+ #x80E9) 
(defglextfun "DrawRangeElementsEXT" draw-range-elements-ext :return "void"
 :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |type| :type |DrawElementsType| :direction :in)
  (:name |indices| :type |Void| :direction :in :array t :size
   (|count| |type|)))
 :category "EXT_draw_range_elements" :deprecated nil :version "1.1") 
(make-extension-loader |EXT_draw_range_elements|
 (("DrawRangeElementsEXT" draw-range-elements-ext :return "void" :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |start| :type |UInt32| :direction :in)
    (:name |end| :type |UInt32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |type| :type |DrawElementsType| :direction :in)
    (:name |indices| :type |Void| :direction :in :array t :size
     (|count| |type|)))
   :category "EXT_draw_range_elements" :deprecated nil :version "1.1"))) 
