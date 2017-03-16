class Product < ActiveRecord::Base
  def sale_message
    if price.to_f < 10
      return "Discount item!"
    else
      return "Everyday value!"
    end
  end

  def tax
    return price.to_f * 0.09
  end

  def total
    return price.to_f + tax
  end

  def price_class_name
    if sale_message == "Discount item!"
      return "discount-item"
    else
      return ""
    end
  end
end
