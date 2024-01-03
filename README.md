<!-- 

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string |             |
| encrypted_password | string |             |

### Association

- has_many :tasks


## tasks テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| category_id | integer    | null: false                    |
| url         | string     |                                |
| note        | string     |                                |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :deadlines



## deadlines テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| deadline  | date       | null: false                    |
| completed | date       |                                |
| task      | references | null: false, foreign_key: true |

### Association

- belongs_to :task -->



# アプリケーション名
InDaHouse

# アプリケーション概要
家事や消耗品購入など繰り返し発生するタスクを管理するためのアプリケーション

# URL
https://indahouse.onrender.com/

# テスト用アカウント
Basic認証ID：admin

Basic認証パスワード：3333

メールアドレス：

パスワード：

# 利用方法

## タスク登録
1.ヘッダーからユーザーの新規登録を行う。

2.ヘッダーの「New Task」ボタンから新規タスクを登録する。

## タスクを完了&次回予定を登録
1.タスク一覧画面で任意のタスクの「✔」をクリックする。

2.完了日、次回予定日を入力する。

# アプリケーションを作成した背景
家事や消耗品購入など、繰り返し発生するタスクを簡単に管理し、抜け漏れなく実行することができるアプリがほしいと思い作成した。

購入品の販売ページへのリンク登録や、タスクの完了過去履歴表示機能が他のアプリには無い特徴となっている。

# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/1MSOtQ68mh-1FdRFht_PyJ5nb-zo9Qovfeyg-8NThhFM/edit#gid=982722306)


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/718dd6aeabac2ddad5828d29aa3ce64c.png)](https://gyazo.com/718dd6aeabac2ddad5828d29aa3ce64c)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/73aa6ce6f46853ba927e9ab9f84fd295.png)](https://gyazo.com/73aa6ce6f46853ba927e9ab9f84fd295)

# 開発環境
HTML・CSS・Ruby・Ruby on Rails・GitHub・Render・VScode

# 工夫したポイント
タスク管理することに手間がかからないように操作をシンプルにした。具体的には少ない手順でタスク登録、完了が行えるようにした。
