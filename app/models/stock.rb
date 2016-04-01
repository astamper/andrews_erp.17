class Stock < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :stock_type
  has_many :order_items
end
