# README
# 自分の伝えたいことを書き、そのフィードバックをもらえる掲示板アプリケーション
 [![Image from Gyazo](https://i.gyazo.com/30cfeb5d5bdf7adb63a11b950133e4d8.jpg)](https://gyazo.com/30cfeb5d5bdf7adb63a11b950133e4d8)
# 概要
 自分の考えを発信し、コメントでそのフィードバックをもらうことを目的とした掲示板アプリである。
ペルソナは、自分の考えを発信し、他者から多くのフィードバックを求めている人を想定している。
# App URL
https://forum-original.herokuapp.com/
 
# 仕様
* トップページから新規登録・ログイン<br>
* トップページに新規投稿が表示されている
* 投稿詳細ページでは、投稿に対するコメントができる
```
ユーザー管理機能
```
ログイン前 : トップ画面に「新規登録」、「ログイン」のボタンがある
[![Image from Gyazo](https://i.gyazo.com/24128e692d32564d2540fb0a9574ddd2.jpg)](https://gyazo.com/24128e692d32564d2540fb0a9574ddd2)
ログイン後 : トップ画面に「ログアウト」、「投稿する」にボタンが切り替わる
[![Image from Gyazo](https://i.gyazo.com/b623b9bc1b84b3eb6fcfe2e8ce672acd.jpg)](https://gyazo.com/b623b9bc1b84b3eb6fcfe2e8ce672acd)
```
投稿機能
```
投稿後トップページへ遷移するGIF
[![Image from Gyazo](https://i.gyazo.com/b2c4d5335c6bbea3aadb4ee072538570.gif)](https://gyazo.com/b2c4d5335c6bbea3aadb4ee072538570)
```
コメント投稿機能
```
[![Image from Gyazo](https://i.gyazo.com/9a36870c73ec68f805ef3811c220aced.gif)](https://gyazo.com/9a36870c73ec68f805ef3811c220aced)

# jQuery
```
スムーススクロール : 最新テーマの数が増えてきたときに、簡単に移動できるよう実装した。
```
[![Image from Gyazo](https://i.gyazo.com/f4b900c7ee64e93f7ab71bfa19a96c00.gif)](https://gyazo.com/f4b900c7ee64e93f7ab71bfa19a96c00)

# ページネーション
```
コメントが11件以上投稿された時、ページネーションが表示される
```
[![Image from Gyazo](https://i.gyazo.com/1a5dbf898384c7d05cdf1a2927173a55.jpg)](https://gyazo.com/1a5dbf898384c7d05cdf1a2927173a55)

# 目指した課題解決
自分の考えに対して、他者はどのような考えを持つのかを知るため。また、フィードバックをもらい、それを投稿者自身の人生に活かしていけるような掲示板アプリケーションを目指した。

#  開発スキル
・Ruby<br>
・Rails<br>
・HTML<br>
・SCSS<br>
・CSS<br>
・jQuery<br>
・git hub<br>

# 実装予定の機能
・コメント返信機能 →コミュニケーションを活性化させるため<br>
・タグ機能 →ユーザーが興味のあるトピックに簡単にアクセスできるため
# テーブル設計

## user テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| nickname  | string | null: false |

### Associate
・belongs_to :board<br>
・belongs_to :comment

## board テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| user   | references |         |
| image  |                      |

## Associate
・has_many :users<br>
・belongs_to :comment

## comment テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |         null: false            |
| user    | references |                                 |
| prototype| references 

## Associate
・has_many :users<br>
・belongs_to :board
 