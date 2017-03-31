class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    order = Order.new(user_id: current_user.id)
    order.save

    carted_products = current_user.carted_products.where(status: "carted")
    carted_products.update_all(status: "purchased", order_id: order.id)

    order.calculate_totals

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.html.erb"
  end
end
