class Supplier < ApplicationRecord
  has_many :products
  
  # def products
  #   Product.where(supplier_id: self.id)
  # end
end
