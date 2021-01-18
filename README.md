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
- has_one :buys







## items テーブル

| Column            | Type       | Options     |
| ------------------  | ---------- | ----------- |
| name                | string     | null: false |
| text                | text       | null: false |
| category_id         | integer    | null: false |
| state_id            | integer    | null: false |
| area_id             | integer    | null: false |
| shopping_charges_id | integer    | null: false |
| days_id             | integer    | null: false |
| pricce              | integer    | null: false |
| user_id             | references | null: false, foreign_key: true     |


### Association

- belong_to :user
- has_one :buy





## buys テーブル

| Column        | Type       | Options                       |
| ------------- | ---------- | ----------------------------- |
| user_id       | references| null: false ,foreign_key: true |
| item_id       | references| null: false ,foreign_key: true |

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
| house_number | string     | 
| buy_id       | references | null: false ,foreign_key: true |
| phone_number | string     | null: false |

### Association

- belong_to :buy