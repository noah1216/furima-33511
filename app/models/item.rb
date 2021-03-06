class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :state
  belongs_to :shopping_charge
  belongs_to :area
  belongs_to :shopping_day

  belongs_to :user
  has_one :order
  has_one_attached :image

  validates :price, format: { with: /\A[0-9]+\z/ },
                    numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }

  with_options presence: true do
    validates :image
    validates :name
    validates :text
    validates :price
  end

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :state_id
    validates :shopping_charge_id
    validates :area_id
    validates :shopping_day_id
  end
end
