class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :carted_products
end
