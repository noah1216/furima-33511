class OrderAddress

  include ActiveModel::Model
  attr_accessor :postal_code, :area_id, :municipality, :block_number, :house_number, :order_id, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :postal_code, format:{with: /\A\d{3}[-]\d{4}\z/}
    validates :area_id, numericality: { other_than: 0 }
    validates :municipality
    validates :block_number
    # validates :house_number
    validates :phone_number, format:{with:/\A\d{11}\z/}
    validates :order_id
    validates :user_id
    validates :item_id
  end
    
  def save
    sum = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, municipality: municipality, house_number: house_number, block_number: block_number, phone_number: phone_number, order_id: sum.id)
  end
end

