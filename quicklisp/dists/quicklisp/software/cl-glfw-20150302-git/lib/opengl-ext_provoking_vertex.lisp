;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_provoking_vertex

(defconstant +quads-follow-provoking-vertex-convention-ext+ #x8E4C) 
(defconstant +first-vertex-convention-ext+ #x8E4D) 
(defconstant +last-vertex-convention-ext+ #x8E4E) 
(defconstant +provoking-vertex-ext+ #x8E4F) 
(defconstant +quads-follow-provoking-vertex-convention-ext+ #x8E4C) 
(defconstant +first-vertex-convention-ext+ #x8E4D) 
(defconstant +last-vertex-convention-ext+ #x8E4E) 
(defconstant +provoking-vertex-ext+ #x8E4F) 
(defglextfun "ProvokingVertexEXT" provoking-vertex-ext :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)) :category
 "EXT_provoking_vertex" :deprecated nil :version "2.1") 
(make-extension-loader |EXT_provoking_vertex|
 (("ProvokingVertexEXT" provoking-vertex-ext :return "void" :args
   ((:name |mode| :type |GLenum| :direction :in)) :category
   "EXT_provoking_vertex" :deprecated nil :version "2.1"))) 
