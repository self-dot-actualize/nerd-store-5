class Product < ActiveRecord::Base
  def tax
    return price.to_f * 0.09
  end

  def total
    return price.to_f + tax
  end

  def discounted?
    return price.to_f < 10
  end
end
