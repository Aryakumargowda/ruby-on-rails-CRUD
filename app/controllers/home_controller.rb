# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @products = Product.all
    @orders = Order.all
    @customers = Customer.all
    @line_items = LineItem.all
  end
end
