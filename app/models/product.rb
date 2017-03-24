class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders

  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  def discounted?
    return price < 10
  end
end
