class CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products.length > 0
      render "index.html.erb"
    else
      flash[:warning] = "You have no items in the cart. BUY SOMETHING NOW!!!"
      redirect_to "/"
    end
  end

  def create
    carted_product = CartedProduct.new(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: current_user.id,
      status: "carted"
    )
    carted_product.save
    redirect_to "/carted_products"
  end
end
