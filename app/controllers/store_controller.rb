class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@current_date_and_time = Time.now.strftime("%d/%m/%Y %H:%M")
  end
end
