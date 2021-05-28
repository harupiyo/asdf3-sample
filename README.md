# ASDF3(Another System Difinition Factory) 解説

- システム定義ファイル(.asd) に従ってファイルの読み込み順を決定し、コンパイル＆ロードを行うツール
- (いわゆるmake ツール)

## サンプル

~/common-lisp						; asdf がシステムを見つけるデフォルトのフォルダ(この中にシステムフォルダを設置)
   └── asdf3-sample					; システム用フォルダ
      ├── asdf3-sample.asd			; システム定義ファイル
      ├── main.lisp					; (使用例を掲載)
      ├── package.lisp				; 2 番目に読み込む必要のあるファイル
      ├── src
      │   └── util.lisp				; 1 番目に読み込む必要のあるファイル
      └── tests
          └── util-tests.lisp		; (テスト用. まだ完成していない)

## 動作確認

; システム(ライブラリー) の読み込み
(load "~/common-lisp/asdf3-sample/src/util.lisp")
(load "~/common-lisp/asdf3-sample/package.lisp")
; ↑と同じことが(たとえファイル数が膨大なシステムであっても)次の一行で済む(コンパイルも実行される)
(asdf:load-system :asdf3-sample)    ; 処理系によっては (require :asdf3-sample) でも同じ結果になる(例: sbcl)
; システムを使用したプログラム
(in-package :asdf3-sample)
1
sore          ; fib 1
are           ; fib 2
(+ sore are)  ; fib 3
(+ sore are)  ; fib 4
(+ sore are)  ; fib 5

## システムの開発者にもメリットがある

- システム配下のソースファイルを更新した場合に、再コンパイル＆ロードが必要なファイルを自動的に判断して処理
    (asdf:load-system :asdf3-sample)
- 自動テスト(現在動作しませんが、雰囲気だけのっけておきます)
    (asdf:operate 'asdf:test-op "asdf3-sample/util")
- 実行バイナリー作成(現在動作しませんが、雰囲気だけのっけておきます)
    (asdf:operate 'asdf:monolithic-compile-bundle-op "asdf3-sample/executable")

# (参考) ASDF 和訳
https://privet-kitty.github.io/misc/asdf-ja
