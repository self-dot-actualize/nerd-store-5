class ProductsController < ApplicationController
  def index
    if params[:form_name]
      @products = Product.where("name LIKE ?", "%" + params[:form_name] + "%")
    elsif params[:discounted] == "true"
      @products = Product.where("price < ?", 10)
    else
      sort_attribute = params[:sort_by] || "name"
      sort_attribute_order = params[:sort_order] || "asc"
      @products = Product.all.order(sort_attribute => sort_attribute_order)
      # @products = Product.all.order(params[:sort_by])
    end
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      supplier_id: 1
    )
    @product.save
    image = Image.new(
      url: params[:image],
      product_id: @product.id
    )
    image.save
    flash[:success] = "Product Created"
    redirect_to "/products/#{@product.id}"
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name],
      description: params[:description],
      price: params[:price]
    )
    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:warning] = "Product Created"
    redirect_to "/"
  end
end

