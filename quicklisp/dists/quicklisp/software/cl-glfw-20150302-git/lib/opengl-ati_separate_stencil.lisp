;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_separate_stencil

(defconstant +stencil-back-func-ati+ #x8800) 
(defconstant +stencil-back-pass-depth-fail-ati+ #x8802) 
(defconstant +stencil-back-pass-depth-pass-ati+ #x8803) 
(defconstant +stencil-back-func-ati+ #x8800) 
(defconstant +stencil-back-fail-ati+ #x8801) 
(defconstant +stencil-back-pass-depth-fail-ati+ #x8802) 
(defconstant +stencil-back-pass-depth-pass-ati+ #x8803) 
(defglextfun "StencilFuncSeparateATI" stencil-func-separate-ati :return "void"
 :args
 ((:name |frontfunc| :type |StencilFunction| :direction :in)
  (:name |backfunc| :type |StencilFunction| :direction :in)
  (:name |ref| :type |ClampedStencilValue| :direction :in)
  (:name |mask| :type |MaskedStencilValue| :direction :in))
 :category "ATI_separate_stencil" :deprecated nil :version "1.2") 
(defglextfun "StencilOpSeparateATI" stencil-op-separate-ati :return "void"
 :args
 ((:name |face| :type |StencilFaceDirection| :direction :in)
  (:name |sfail| :type |StencilOp| :direction :in)
  (:name |dpfail| :type |StencilOp| :direction :in)
  (:name |dppass| :type |StencilOp| :direction :in))
 :category "ATI_separate_stencil" :deprecated nil :version "1.2") 
(make-extension-loader |ATI_separate_stencil|
 (("StencilFuncSeparateATI" stencil-func-separate-ati :return "void" :args
   ((:name |frontfunc| :type |StencilFunction| :direction :in)
    (:name |backfunc| :type |StencilFunction| :direction :in)
    (:name |ref| :type |ClampedStencilValue| :direction :in)
    (:name |mask| :type |MaskedStencilValue| :direction :in))
   :category "ATI_separate_stencil" :deprecated nil :version "1.2")
  ("StencilOpSeparateATI" stencil-op-separate-ati :return "void" :args
   ((:name |face| :type |StencilFaceDirection| :direction :in)
    (:name |sfail| :type |StencilOp| :direction :in)
    (:name |dpfail| :type |StencilOp| :direction :in)
    (:name |dppass| :type |StencilOp| :direction :in))
   :category "ATI_separate_stencil" :deprecated nil :version "1.2"))) 