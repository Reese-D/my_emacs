;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_depth_bounds_test

(defconstant +depth-bounds-test-ext+ #x8890) 
(defconstant +depth-bounds-ext+ #x8891) 
(defconstant +array-buffer+ #x8892) 
(defconstant +element-array-buffer+ #x8893) 
(defconstant +array-buffer-binding+ #x8894) 
(defconstant +element-array-buffer-binding+ #x8895) 
(defconstant +vertex-array-buffer-binding+ #x8896) 
(defconstant +normal-array-buffer-binding+ #x8897) 
(defconstant +color-array-buffer-binding+ #x8898) 
(defconstant +index-array-buffer-binding+ #x8899) 
(defconstant +texture-coord-array-buffer-binding+ #x889A) 
(defconstant +edge-flag-array-buffer-binding+ #x889B) 
(defconstant +secondary-color-array-buffer-binding+ #x889C) 
(defconstant +fog-coord-array-buffer-binding+ #x889D) 
(defconstant +fog-coordinate-array-buffer-binding+ #x889D) 
(defconstant +weight-array-buffer-binding+ #x889E) 
(defconstant +vertex-attrib-array-buffer-binding+ #x889F) 
(defconstant +depth-bounds-test-ext+ #x8890) 
(defconstant +depth-bounds-ext+ #x8891) 
(defglextfun "DepthBoundsEXT" depth-bounds-ext :return "void" :args
 ((:name |zmin| :type |ClampedFloat64| :direction :in)
  (:name |zmax| :type |ClampedFloat64| :direction :in))
 :category "EXT_depth_bounds_test" :deprecated nil :version "1.2") 
(make-extension-loader |EXT_depth_bounds_test|
 (("DepthBoundsEXT" depth-bounds-ext :return "void" :args
   ((:name |zmin| :type |ClampedFloat64| :direction :in)
    (:name |zmax| :type |ClampedFloat64| :direction :in))
   :category "EXT_depth_bounds_test" :deprecated nil :version "1.2"))) 
