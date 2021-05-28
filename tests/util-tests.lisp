(defpackage asdf3-sample/util/tests
  (:use :cl :asdf3-sample/util :rove))   ; rove はテストフレームワーク

(in-package :asdf3-sample/util/tests)

1
2
(deftest test-basic-1
         (testing "sore => 2"
                  (ok (= 2 sore)))) ; FAIL!
#|
1
2
(deftest test-basic-2
         (testing "are => 1"
                  (let ((v are))
                    (ok (= 1 v)))))
(deftest test-basic-3
         (testing "+ sore are => 3"
                  (let ((v (+ sore are)))
                    (ok (= 3 v)))))

;; フィボナッチ数列
1 ; fib 1
1 ; fib 2
(deftest test-fib-3
         (testing "fib 3 => 2"
                  (let ((v (+ sore are)))
                    (ok (= 2 v)))))
(deftest test-fib-4
         (testing "fib 4 => 3"
                  (let ((v (+ sore are)))
                    (ok (= 3 v)))))
(deftest test-fib-5
         (testing "fib 5 => 5"
                  (let ((v (+ sore are)))
                    (ok (= 5 v)))))
(deftest test-fib-6
         (testing "fib 6 => 8"
                  (let ((v (+ sore are)))
                    (ok (= 8 v)))))
(deftest test-fib-7
         (testing "fib 7 => 13"
                  (let ((v (+ sore are)))
                    (ok (= 13 v)))))
|#
