;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_blend_equation_separate

(defconstant +blend-equation-alpha-ext+ #x883D) 
(defconstant +blend-equation-alpha-oes+ #x883D) 
(defconstant +blend-equation-rgb-ext+ #x8009) 
(defconstant +blend-equation-alpha-ext+ #x883D) 
(defglextfun "BlendEquationSeparateEXT" blend-equation-separate-ext :return
 "void" :args
 ((:name |modeRGB| :type |BlendEquationModeEXT| :direction :in)
  (:name |modeAlpha| :type |BlendEquationModeEXT| :direction :in))
 :category "EXT_blend_equation_separate" :deprecated nil :version "1.2") 
(make-extension-loader |EXT_blend_equation_separate|
 (("BlendEquationSeparateEXT" blend-equation-separate-ext :return "void" :args
   ((:name |modeRGB| :type |BlendEquationModeEXT| :direction :in)
    (:name |modeAlpha| :type |BlendEquationModeEXT| :direction :in))
   :category "EXT_blend_equation_separate" :deprecated nil :version "1.2"))) 
