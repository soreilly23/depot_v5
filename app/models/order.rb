class Order < ApplicationRecord
	validates :pay_type, inclusion: pay_types.keys

	has_many :line_items, dependent: :destroy
	enum pay_type: {
		"Cheque" => 0,
		"Credit Card" => 1,
		"Purchase Order" => 2
	}
end
