class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product, optional: true
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_totals
    product = Product.find_by(id: product_id)
    subtotal = product.price * quantity
    tax = subtotal * 0.09
    total = subtotal + tax
    self.subtotal = subtotal
    self.tax = tax
    self.total = total
  end
end
