class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :state
  belongs_to :shopping_charge
  belongs_to :area
  belongs_to :shopping_day

  belongs_to :user
  has_one_attached :image


  
  validates :name, presence: true
  validates :text, presence: true
  validates :price, presence: true

  with_options numericality: { other_than: 0 } do
    validates :category_id
    validates :state_id
    validates :shopping_charge_id
    validates :area_id
    validates :shopping_day_id
  end
end
