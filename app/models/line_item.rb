class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :set_unit_price
  before_save :set_quantity

  private
  def set_quantity
    self.quantity=order.quantity
  end
  def set_unit_price
    # Set the unit price based on the product's current price
    self.unit_price = order.quantity*product.price
  end

end
