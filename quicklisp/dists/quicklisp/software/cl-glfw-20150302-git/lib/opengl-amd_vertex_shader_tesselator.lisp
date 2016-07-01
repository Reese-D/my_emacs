;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; amd_vertex_shader_tesselator

(defconstant +sampler-buffer-amd+ #x9001) 
(defconstant +int-sampler-buffer-amd+ #x9002) 
(defconstant +unsigned-int-sampler-buffer-amd+ #x9003) 
(defconstant +tessellation-mode-amd+ #x9004) 
(defconstant +tessellation-factor-amd+ #x9005) 
(defconstant +discrete-amd+ #x9006) 
(defconstant +continuous-amd+ #x9007) 
(defconstant +sampler-buffer-amd+ #x9001) 
(defconstant +int-sampler-buffer-amd+ #x9002) 
(defconstant +unsigned-int-sampler-buffer-amd+ #x9003) 
(defconstant +tessellation-mode-amd+ #x9004) 
(defconstant +tessellation-factor-amd+ #x9005) 
(defconstant +discrete-amd+ #x9006) 
(defconstant +continuous-amd+ #x9007) 
(defglextfun "TessellationModeAMD" tessellation-mode-amd :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)) :category
 "AMD_vertex_shader_tesselator" :deprecated nil :version "2.0") 
(defglextfun "TessellationFactorAMD" tessellation-factor-amd :return "void"
 :args ((:name |factor| :type |Float32| :direction :in)) :category
 "AMD_vertex_shader_tesselator" :deprecated nil :version "2.0") 
(make-extension-loader |AMD_vertex_shader_tesselator|
 (("TessellationModeAMD" tessellation-mode-amd :return "void" :args
   ((:name |mode| :type |GLenum| :direction :in)) :category
   "AMD_vertex_shader_tesselator" :deprecated nil :version "2.0")
  ("TessellationFactorAMD" tessellation-factor-amd :return "void" :args
   ((:name |factor| :type |Float32| :direction :in)) :category
   "AMD_vertex_shader_tesselator" :deprecated nil :version "2.0"))) 
