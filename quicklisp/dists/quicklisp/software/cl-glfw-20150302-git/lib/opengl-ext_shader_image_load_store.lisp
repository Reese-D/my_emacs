;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_shader_image_load_store

(defconstant +image-1d-ext+ #x904C) 
(defconstant +image-2d-ext+ #x904D) 
(defconstant +image-3d-ext+ #x904E) 
(defconstant +image-2d-rect-ext+ #x904F) 
(defconstant +image-cube-ext+ #x9050) 
(defconstant +image-buffer-ext+ #x9051) 
(defconstant +image-1d-array-ext+ #x9052) 
(defconstant +image-2d-array-ext+ #x9053) 
(defconstant +image-cube-map-array-ext+ #x9054) 
(defconstant +image-2d-multisample-ext+ #x9055) 
(defconstant +image-2d-multisample-array-ext+ #x9056) 
(defconstant +int-image-1d-ext+ #x9057) 
(defconstant +int-image-2d-ext+ #x9058) 
(defconstant +int-image-3d-ext+ #x9059) 
(defconstant +int-image-2d-rect-ext+ #x905A) 
(defconstant +int-image-cube-ext+ #x905B) 
(defconstant +int-image-buffer-ext+ #x905C) 
(defconstant +int-image-1d-array-ext+ #x905D) 
(defconstant +int-image-2d-array-ext+ #x905E) 
(defconstant +int-image-cube-map-array-ext+ #x905F) 
(defconstant +int-image-2d-multisample-ext+ #x9060) 
(defconstant +int-image-2d-multisample-array-ext+ #x9061) 
(defconstant +unsigned-int-image-1d-ext+ #x9062) 
(defconstant +unsigned-int-image-2d-ext+ #x9063) 
(defconstant +unsigned-int-image-3d-ext+ #x9064) 
(defconstant +unsigned-int-image-2d-rect-ext+ #x9065) 
(defconstant +unsigned-int-image-cube-ext+ #x9066) 
(defconstant +unsigned-int-image-buffer-ext+ #x9067) 
(defconstant +unsigned-int-image-1d-array-ext+ #x9068) 
(defconstant +unsigned-int-image-2d-array-ext+ #x9069) 
(defconstant +unsigned-int-image-cube-map-array-ext+ #x906A) 
(defconstant +unsigned-int-image-2d-multisample-ext+ #x906B) 
(defconstant +unsigned-int-image-2d-multisample-array-ext+ #x906C) 
(defconstant +max-image-samples-ext+ #x906D) 
(defconstant +image-binding-format-ext+ #x906E) 
(defconstant +vertex-attrib-array-barrier-bit-ext+ #x1) 
(defconstant +element-array-barrier-bit-ext+ #x2) 
(defconstant +uniform-barrier-bit-ext+ #x4) 
(defconstant +texture-fetch-barrier-bit-ext+ #x8) 
(defconstant +shader-image-access-barrier-bit-ext+ #x20) 
(defconstant +command-barrier-bit-ext+ #x40) 
(defconstant +pixel-buffer-barrier-bit-ext+ #x80) 
(defconstant +texture-update-barrier-bit-ext+ #x100) 
(defconstant +buffer-update-barrier-bit-ext+ #x200) 
(defconstant +framebuffer-barrier-bit-ext+ #x400) 
(defconstant +transform-feedback-barrier-bit-ext+ #x800) 
(defconstant +atomic-counter-barrier-bit-ext+ #x1000) 
(defconstant +all-barrier-bits-ext+ #xFFFFFFFF) 
(defconstant +max-image-units-ext+ #x8F38) 
(defconstant +max-combined-image-units-and-fragment-outputs-ext+ #x8F39) 
(defconstant +image-binding-name-ext+ #x8F3A) 
(defconstant +image-binding-level-ext+ #x8F3B) 
(defconstant +image-binding-layered-ext+ #x8F3C) 
(defconstant +image-binding-layer-ext+ #x8F3D) 
(defconstant +image-binding-access-ext+ #x8F3E) 
(defconstant +image-1d-ext+ #x904C) 
(defconstant +image-2d-ext+ #x904D) 
(defconstant +image-3d-ext+ #x904E) 
(defconstant +image-2d-rect-ext+ #x904F) 
(defconstant +image-cube-ext+ #x9050) 
(defconstant +image-buffer-ext+ #x9051) 
(defconstant +image-1d-array-ext+ #x9052) 
(defconstant +image-2d-array-ext+ #x9053) 
(defconstant +image-cube-map-array-ext+ #x9054) 
(defconstant +image-2d-multisample-ext+ #x9055) 
(defconstant +image-2d-multisample-array-ext+ #x9056) 
(defconstant +int-image-1d-ext+ #x9057) 
(defconstant +int-image-2d-ext+ #x9058) 
(defconstant +int-image-3d-ext+ #x9059) 
(defconstant +int-image-2d-rect-ext+ #x905A) 
(defconstant +int-image-cube-ext+ #x905B) 
(defconstant +int-image-buffer-ext+ #x905C) 
(defconstant +int-image-1d-array-ext+ #x905D) 
(defconstant +int-image-2d-array-ext+ #x905E) 
(defconstant +int-image-cube-map-array-ext+ #x905F) 
(defconstant +int-image-2d-multisample-ext+ #x9060) 
(defconstant +int-image-2d-multisample-array-ext+ #x9061) 
(defconstant +unsigned-int-image-1d-ext+ #x9062) 
(defconstant +unsigned-int-image-2d-ext+ #x9063) 
(defconstant +unsigned-int-image-3d-ext+ #x9064) 
(defconstant +unsigned-int-image-2d-rect-ext+ #x9065) 
(defconstant +unsigned-int-image-cube-ext+ #x9066) 
(defconstant +unsigned-int-image-buffer-ext+ #x9067) 
(defconstant +unsigned-int-image-1d-array-ext+ #x9068) 
(defconstant +unsigned-int-image-2d-array-ext+ #x9069) 
(defconstant +unsigned-int-image-cube-map-array-ext+ #x906A) 
(defconstant +unsigned-int-image-2d-multisample-ext+ #x906B) 
(defconstant +unsigned-int-image-2d-multisample-array-ext+ #x906C) 
(defconstant +max-image-samples-ext+ #x906D) 
(defconstant +image-binding-format-ext+ #x906E) 
(defconstant +vertex-attrib-array-barrier-bit-ext+ #x1) 
(defconstant +element-array-barrier-bit-ext+ #x2) 
(defconstant +uniform-barrier-bit-ext+ #x4) 
(defconstant +texture-fetch-barrier-bit-ext+ #x8) 
(defconstant +shader-image-access-barrier-bit-ext+ #x20) 
(defconstant +command-barrier-bit-ext+ #x40) 
(defconstant +pixel-buffer-barrier-bit-ext+ #x80) 
(defconstant +texture-update-barrier-bit-ext+ #x100) 
(defconstant +buffer-update-barrier-bit-ext+ #x200) 
(defconstant +framebuffer-barrier-bit-ext+ #x400) 
(defconstant +transform-feedback-barrier-bit-ext+ #x800) 
(defconstant +atomic-counter-barrier-bit-ext+ #x1000) 
(defconstant +all-barrier-bits-ext+ #xFFFFFFFF) 
(defglextfun "MemoryBarrierEXT" memory-barrier-ext :return "void" :args
 ((:name |barriers| :type |GLbitfield| :direction :in)) :category
 "EXT_shader_image_load_store" :deprecated nil :version "4.1") 
(defglextfun "BindImageTextureEXT" bind-image-texture-ext :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |texture| :type |UInt32| :direction :in)
  (:name |level| :type |Int32| :direction :in)
  (:name |layered| :type |Boolean| :direction :in)
  (:name |layer| :type |Int32| :direction :in)
  (:name |access| :type |GLenum| :direction :in)
  (:name |format| :type |Int32| :direction :in))
 :category "EXT_shader_image_load_store" :deprecated nil :version "4.1") 
(make-extension-loader |EXT_shader_image_load_store|
 (("MemoryBarrierEXT" memory-barrier-ext :return "void" :args
   ((:name |barriers| :type |GLbitfield| :direction :in)) :category
   "EXT_shader_image_load_store" :deprecated nil :version "4.1")
  ("BindImageTextureEXT" bind-image-texture-ext :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |texture| :type |UInt32| :direction :in)
    (:name |level| :type |Int32| :direction :in)
    (:name |layered| :type |Boolean| :direction :in)
    (:name |layer| :type |Int32| :direction :in)
    (:name |access| :type |GLenum| :direction :in)
    (:name |format| :type |Int32| :direction :in))
   :category "EXT_shader_image_load_store" :deprecated nil :version "4.1"))) 
