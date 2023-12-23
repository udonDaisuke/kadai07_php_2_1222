# アプリ名：ブックマークシェア＋ユーザー登録

***

## アプリの概要

- ユーザー情報(ユーザーID、パスワード、ユーザー表示名)を登録する機能を実装
- 登録したユーザーID、パスワードを使用した、ログイン・ログアウト機能を実装
- ログインしているユーザーの表示名をブックマーク情報に含めた状態で保存できる
- (予定)ユーザーがコメント・イイねができる

## 使用方法
 1. **ユーザー登録**：ユーザーID、パスワード、ユーザー表示名を入力し、登録ボタンをクリック。<br>**⇒submit時にvalidation+DB照合が行われエラーが表示される**
 1. **ログイン**: ユーザーID、パスワードを入力しボタンをクリック。<br> **⇒⇒submit時にvalidation+DB照合が行われエラーが表示される**
 1. **ブックマーク登録**: 登録内容を明記しボタンをクリック<br> **⇒bm.phpが表示され、登録結果を確認。**
 1. (予定)ブックマーク一覧から、コメント・イイねを登録

## 苦労したところ
 - ログインに必要な情報集める際、
    - 入力値のbind有無
    - パスワードのhash化(`password_verify/password_hash関数`)
    - ログインしているユーザーの情報をどう取得するか(`session_start/$_SESSION=[]`)
    - phpのページの分割単位

    等の情報が、紹介されている記事によってまちまちであったため、内容を読み取り、自分のアプリ向けにカスタマイズするところが大変だった。<br>**⇒結果として理解度は高まった。**
 - ユーザー登録・ログインのUIデザイン・挙動を既存のサービスのモノを参考に再現を試みた。<br>POST時に各種ステータス情報を送ることで、ログイン時のバリデーション結果や、ユーザー登録の成否を切り替えて表示する仕様にした。<br>画面遷移をFadeInでスムーズにすることでログイン/登録画面UIの切り替えが発生していることを知らせることができる。
    
## なんとなくわかったこと
 - ユーザー情報の登録方式・DB操作
 - テーブル感の情報の紐付けのイメージ(ブックマークテーブルユーザー情報)
