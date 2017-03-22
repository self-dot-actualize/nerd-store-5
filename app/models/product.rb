class Product < ActiveRecord::Base
  has_many :images
  belongs_to :supplier

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
