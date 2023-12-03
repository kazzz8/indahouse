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
| user_id     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :deadlines



## deadlines テーブル

| Column    | Type | Options     |
| --------- | ---- | ----------- |
| deadline  | date | null: false |
| completed | date |             |

### Association

- belongs_to :task

