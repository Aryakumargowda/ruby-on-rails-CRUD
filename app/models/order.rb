class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :products, through: :line_items
  attribute :quantity, :integer
  # before_save:
end
