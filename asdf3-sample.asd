#|
1. util/util.lisp
2. package.lisp
の順番にコンパイルして読み込む.asd ファイルの記述例
|#

(defsystem "asdf3-sample"
  :version "0.1.0"
  :author "harupiyo@gmail.com"
  :license "MIT License"
  :description "asdf3 を使ってシステム(再利用可能なプロジェクト)を定義するサンプル"
  :depends-on ("asdf3-sample/util")
  :components ((:file "package")))

(defsystem "asdf3-sample/util"
  :components ((:module "src"
                        :components ((:file "util"))))
  :in-order-to ((test-op (test-op "asdf3-sample/util/tests"))))

; TODO テストの実施(調整中)
(defsystem "asdf3-sample/util/tests"
  :depends-on ("asdf3-sample/util" "rove")
  :components ((:module "tests" :components ((:file "util-tests"))))
  :perform (test-op (op c) (symbol-call :rove :run c)))

; TODO 実行ファイルの生成(調整中)
(defsystem "asdf3-sample/executable"
  :build-operation program-op
  :build-pathname "main-command"
  :depends-on (:asdf3-sample)
  :components ((:file "main")))
