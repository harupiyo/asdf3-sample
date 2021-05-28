(defpackage asdf3-sample/util
  (:use :common-lisp)
  (:export #:sore #:are))

(in-package :asdf3-sample/util)

;(defmacro sore () `*) ; "それ"
;(defmacro are () `**) ; "あれ"

(define-symbol-macro sore *) ; "それ"
(define-symbol-macro are **) ; "あれ"

