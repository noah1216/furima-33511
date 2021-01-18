# README

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------  | ----------- |
| encrypted_password | string  | null: false |
| email              | string  | null: false, unique: true|
| nickname           | string  | null: false |
| family_name        | string  | null: false |
| first_name         | string  | null: false |
| first_name_kana    | string  | null: false |
| family_name_kana   | string  | null: false |
| birthday           | date    | null: false |

### Association

- has_many :items
- has_many :buys







## items テーブル

| Column              | Type       | Options     |
| ------------------  | ---------- | ----------- |
| name                | string     | null: false |
| text                | text       | null: false |
| category_id         | integer    | null: false |
| state_id            | integer    | null: false |
| area_id             | integer    | null: false |
| shopping_charge_id  | integer    | null: false |
| shopping_day_id     | integer    | null: false |
| price               | integer    | null: false |
| user                | references | null: false, foreign_key: true     |


### Association

- belong_to :user
- has_one :buy





## buys テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| user       | references| null: false ,foreign_key: true |
| item       | references| null: false ,foreign_key: true |

### Association

- belong_to :user
- belong_to :item
- has_one :address





## address テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| postal_code  | string     | null: false |
| area_id      | integer    | null: false |
| municipality | string     | null: false |
| block number | string     | null: false |
| house_number | string     |             |
| buy          | references | null: false ,foreign_key: true |
| phone_number | string     | null: false |

### Association

- belong_to :buy