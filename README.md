# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :tasks




## tasks テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| title                 | string     | null: false                    |
| category_id           | integer    | null: false                    |
| url                   | string     |                                |
| note                  | string     |                                |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :due_dates



## due_dates テーブル

| Column          | Type | Options     |
| --------------- | ---- | ----------- |
| due_dates       | date | null: false |
| completed_dates | date |             |

### Association

- belongs_to :task

