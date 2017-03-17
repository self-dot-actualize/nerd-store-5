class Product < ActiveRecord::Base
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
