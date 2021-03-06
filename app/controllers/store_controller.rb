class StoreController < ApplicationController

	skip_before_action :authorize
	
	include CurrentCart
	before_action :set_cart
	def index
		@products = Product.order(:title)
		@current_date_and_time = Time.now.strftime("%d/%m/%Y %H:%M")
	end
end
