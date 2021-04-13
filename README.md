# README

## user テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| email     | string | null: false |
| password  | string | null: false |
| nickname  | string | null: false |

board: belongs_to
comment: belongs_to

## board テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title  | string | null: false |
| image  |                      |
| user   | references |         |

user: has_many
comment: belongs_to

## comment テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       |         null: false            |
| user    | references |                                 |
| prototype| references 

user: has_many
board: belongs_to