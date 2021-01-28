FactoryBot.define do
  factory :order_address do
    postal_code { "333-3333" }
    area_id { 1 }
    municipality { "浜田市" }
    block_number { "夕香の塔" }
    house_number { "309-11" }
    order_id { 1 }
    phone_number { 11111111111 }
    user_id {1}
    item_id {1}

    # association :user
    # association :item
  end
end
