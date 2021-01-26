class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params) 
    if @order_address.valid?
      @order_address.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  private

 def order_params
  params.require(:order_address).permit(:postal_code, :area_id, :municipality, :house_number, :block_number, :phone_number, :order_id).merge(user_id: current_user.id, item_id: params[item.id])
 end
end
