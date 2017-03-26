class OrdersController < ApplicationController
  def create
    order = Order.new(quantity: params[:quantity], product_id: params[:product_id])
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.html.erb"
  end
end
