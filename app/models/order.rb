class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy

  enum pay_type:{
    "Check" => 0,
    "Credit card" => 1,
    "Purchase order" => 2
  }

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  
end
