;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_half_float

(defconstant +half-float-nv+ #x140B) 
(defconstant +half-apple+ #x140B) 
(defconstant +fixed+ #x140C) 
(defconstant +fixed-oes+ #x140C) 
(defconstant +half-float-nv+ #x140B) 
(defglextfun "VertexAttribs4hvNV" vertex-attribs-4hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |n| :type |SizeI| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size n))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttribs3hvNV" vertex-attribs-3hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |n| :type |SizeI| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size n))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttribs2hvNV" vertex-attribs-2hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |n| :type |SizeI| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size n))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttribs1hvNV" vertex-attribs-1hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |n| :type |SizeI| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size n))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib4hvNV" vertex-attrib-4hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib4hNV" vertex-attrib-4h-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in)
  (:name |z| :type |Half16NV| :direction :in)
  (:name |w| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib3hvNV" vertex-attrib-3hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib3hNV" vertex-attrib-3h-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in)
  (:name |z| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib2hvNV" vertex-attrib-2hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib2hNV" vertex-attrib-2h-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib1hvNV" vertex-attrib-1hv-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexAttrib1hNV" vertex-attrib-1h-nv :return "void" :args
 ((:name |index| :type |UInt32| :direction :in)
  (:name |x| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexWeighthvNV" vertex-weight-hv-nv :return "void" :args
 ((:name |weight| :type |Half16NV| :direction :in :array t :size #x1))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "VertexWeighthNV" vertex-weight-h-nv :return "void" :args
 ((:name |weight| :type |Half16NV| :direction :in)) :category "NV_half_float"
 :deprecated nil :version "1.2") 
(defglextfun "SecondaryColor3hvNV" secondary-color-3hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "SecondaryColor3hNV" secondary-color-3h-nv :return "void" :args
 ((:name |red| :type |Half16NV| :direction :in)
  (:name |green| :type |Half16NV| :direction :in)
  (:name |blue| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "FogCoordhvNV" fog-coord-hv-nv :return "void" :args
 ((:name |fog| :type |Half16NV| :direction :in :array t :size #x1)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "FogCoordhNV" fog-coord-h-nv :return "void" :args
 ((:name |fog| :type |Half16NV| :direction :in)) :category "NV_half_float"
 :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord4hvNV" multi-tex-coord-4hv-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord4hNV" multi-tex-coord-4h-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in)
  (:name |r| :type |Half16NV| :direction :in)
  (:name |q| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord3hvNV" multi-tex-coord-3hv-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord3hNV" multi-tex-coord-3h-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in)
  (:name |r| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord2hvNV" multi-tex-coord-2hv-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord2hNV" multi-tex-coord-2h-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord1hvNV" multi-tex-coord-1hv-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "MultiTexCoord1hNV" multi-tex-coord-1h-nv :return "void" :args
 ((:name |target| :type |TextureUnit| :direction :in)
  (:name |s| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord4hvNV" tex-coord-4hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord4hNV" tex-coord-4h-nv :return "void" :args
 ((:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in)
  (:name |r| :type |Half16NV| :direction :in)
  (:name |q| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord3hvNV" tex-coord-3hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord3hNV" tex-coord-3h-nv :return "void" :args
 ((:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in)
  (:name |r| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord2hvNV" tex-coord-2hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord2hNV" tex-coord-2h-nv :return "void" :args
 ((:name |s| :type |Half16NV| :direction :in)
  (:name |t| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord1hvNV" tex-coord-1hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x1)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "TexCoord1hNV" tex-coord-1h-nv :return "void" :args
 ((:name |s| :type |Half16NV| :direction :in)) :category "NV_half_float"
 :deprecated nil :version "1.2") 
(defglextfun "Color4hvNV" color-4hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Color4hNV" color-4h-nv :return "void" :args
 ((:name |red| :type |Half16NV| :direction :in)
  (:name |green| :type |Half16NV| :direction :in)
  (:name |blue| :type |Half16NV| :direction :in)
  (:name |alpha| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Color3hvNV" color-3hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Color3hNV" color-3h-nv :return "void" :args
 ((:name |red| :type |Half16NV| :direction :in)
  (:name |green| :type |Half16NV| :direction :in)
  (:name |blue| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Normal3hvNV" normal-3hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Normal3hNV" normal-3h-nv :return "void" :args
 ((:name |nx| :type |Half16NV| :direction :in)
  (:name |ny| :type |Half16NV| :direction :in)
  (:name |nz| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex4hvNV" vertex-4hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex4hNV" vertex-4h-nv :return "void" :args
 ((:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in)
  (:name |z| :type |Half16NV| :direction :in)
  (:name |w| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex3hvNV" vertex-3hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex3hNV" vertex-3h-nv :return "void" :args
 ((:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in)
  (:name |z| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex2hvNV" vertex-2hv-nv :return "void" :args
 ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :category
 "NV_half_float" :deprecated nil :version "1.2") 
(defglextfun "Vertex2hNV" vertex-2h-nv :return "void" :args
 ((:name |x| :type |Half16NV| :direction :in)
  (:name |y| :type |Half16NV| :direction :in))
 :category "NV_half_float" :deprecated nil :version "1.2") 
(make-extension-loader |NV_half_float|
 (("VertexAttribs4hvNV" vertex-attribs-4hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |n| :type |SizeI| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size n))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttribs3hvNV" vertex-attribs-3hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |n| :type |SizeI| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size n))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttribs2hvNV" vertex-attribs-2hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |n| :type |SizeI| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size n))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttribs1hvNV" vertex-attribs-1hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |n| :type |SizeI| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size n))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib4hvNV" vertex-attrib-4hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib4hNV" vertex-attrib-4h-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in)
    (:name |z| :type |Half16NV| :direction :in)
    (:name |w| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib3hvNV" vertex-attrib-3hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib3hNV" vertex-attrib-3h-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in)
    (:name |z| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib2hvNV" vertex-attrib-2hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib2hNV" vertex-attrib-2h-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib1hvNV" vertex-attrib-1hv-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexAttrib1hNV" vertex-attrib-1h-nv :return "void" :args
   ((:name |index| :type |UInt32| :direction :in)
    (:name |x| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexWeighthvNV" vertex-weight-hv-nv :return "void" :args
   ((:name |weight| :type |Half16NV| :direction :in :array t :size #x1))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("VertexWeighthNV" vertex-weight-h-nv :return "void" :args
   ((:name |weight| :type |Half16NV| :direction :in)) :category "NV_half_float"
   :deprecated nil :version "1.2")
  ("SecondaryColor3hvNV" secondary-color-3hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("SecondaryColor3hNV" secondary-color-3h-nv :return "void" :args
   ((:name |red| :type |Half16NV| :direction :in)
    (:name |green| :type |Half16NV| :direction :in)
    (:name |blue| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("FogCoordhvNV" fog-coord-hv-nv :return "void" :args
   ((:name |fog| :type |Half16NV| :direction :in :array t :size #x1)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("FogCoordhNV" fog-coord-h-nv :return "void" :args
   ((:name |fog| :type |Half16NV| :direction :in)) :category "NV_half_float"
   :deprecated nil :version "1.2")
  ("MultiTexCoord4hvNV" multi-tex-coord-4hv-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x4))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord4hNV" multi-tex-coord-4h-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in)
    (:name |r| :type |Half16NV| :direction :in)
    (:name |q| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord3hvNV" multi-tex-coord-3hv-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x3))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord3hNV" multi-tex-coord-3h-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in)
    (:name |r| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord2hvNV" multi-tex-coord-2hv-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x2))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord2hNV" multi-tex-coord-2h-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord1hvNV" multi-tex-coord-1hv-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |v| :type |Half16NV| :direction :in :array t :size #x1))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("MultiTexCoord1hNV" multi-tex-coord-1h-nv :return "void" :args
   ((:name |target| :type |TextureUnit| :direction :in)
    (:name |s| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord4hvNV" tex-coord-4hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord4hNV" tex-coord-4h-nv :return "void" :args
   ((:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in)
    (:name |r| :type |Half16NV| :direction :in)
    (:name |q| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord3hvNV" tex-coord-3hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord3hNV" tex-coord-3h-nv :return "void" :args
   ((:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in)
    (:name |r| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord2hvNV" tex-coord-2hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord2hNV" tex-coord-2h-nv :return "void" :args
   ((:name |s| :type |Half16NV| :direction :in)
    (:name |t| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord1hvNV" tex-coord-1hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x1)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("TexCoord1hNV" tex-coord-1h-nv :return "void" :args
   ((:name |s| :type |Half16NV| :direction :in)) :category "NV_half_float"
   :deprecated nil :version "1.2")
  ("Color4hvNV" color-4hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Color4hNV" color-4h-nv :return "void" :args
   ((:name |red| :type |Half16NV| :direction :in)
    (:name |green| :type |Half16NV| :direction :in)
    (:name |blue| :type |Half16NV| :direction :in)
    (:name |alpha| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("Color3hvNV" color-3hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Color3hNV" color-3h-nv :return "void" :args
   ((:name |red| :type |Half16NV| :direction :in)
    (:name |green| :type |Half16NV| :direction :in)
    (:name |blue| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("Normal3hvNV" normal-3hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Normal3hNV" normal-3h-nv :return "void" :args
   ((:name |nx| :type |Half16NV| :direction :in)
    (:name |ny| :type |Half16NV| :direction :in)
    (:name |nz| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex4hvNV" vertex-4hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x4)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex4hNV" vertex-4h-nv :return "void" :args
   ((:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in)
    (:name |z| :type |Half16NV| :direction :in)
    (:name |w| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex3hvNV" vertex-3hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x3)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex3hNV" vertex-3h-nv :return "void" :args
   ((:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in)
    (:name |z| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex2hvNV" vertex-2hv-nv :return "void" :args
   ((:name |v| :type |Half16NV| :direction :in :array t :size #x2)) :category
   "NV_half_float" :deprecated nil :version "1.2")
  ("Vertex2hNV" vertex-2h-nv :return "void" :args
   ((:name |x| :type |Half16NV| :direction :in)
    (:name |y| :type |Half16NV| :direction :in))
   :category "NV_half_float" :deprecated nil :version "1.2"))) 
