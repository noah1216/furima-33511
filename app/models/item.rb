class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :state
  belongs_to :shopping_charge
  belongs_to :area
  belongs_to :shopping_day



  validates :name, presence: true
  validates :text, presence: true
  validates :price, presence: true

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :state_id
    validates :shopping_charge
    validates :area
    validates :shopping_day
  end
end
