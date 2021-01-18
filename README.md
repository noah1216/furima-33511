# README

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------  | ----------- |
| password         | string  | null: false |
| email            | string  | null: false |
| nickname         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| first_name_kana  | string  | null: false |
| family_name_kana | string  | null: false |
| birthday         | date    | null: false |

### Association

- has_many :items
- has_many :buys







## items テーブル

| Column           | Type       | Options     |
| ---------------  | ---------- | ----------- |
| name             | string     | null: false |
| text             | text       | null: false |
| category         | integer    | null: false |
| state            | integer    | null: false |
| image            |            | 
| area             | integer    | null: false |
| shopping_charges | integer    | null: false |
| days             | integer    | null: false |
| pricce           | string     | null: false |
| user             | references | null: false, foreign_key: true     |


### Association

- belong_to :user
- has_one :buy





## buys テーブル

| Column     | Type       | Options                       |
| ------     | ---------- | ----------------------------- |
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
| prefectures  | integer    | null: false |
| municipality | string     | null: false |
| house_number | string     | 
| buy_id       | references | null: false ,foreign_key: true |
| phone_number | integer    | null: false |

### Association

- belong_to :buy