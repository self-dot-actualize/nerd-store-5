class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product, optional: true
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_totals
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
    end
    tax = subtotal * 0.09
    total = subtotal + tax
    update(subtotal: subtotal, tax: tax, total: total)
    # product = Product.find_by(id: product_id)
    # subtotal = product.price * quantity
    # tax = subtotal * 0.09
    # total = subtotal + tax
    # self.subtotal = subtotal
    # self.tax = tax
    # self.total = total
  end
end
