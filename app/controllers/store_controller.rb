class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    # to dispaly products in alphabetic order then we need to use order methode
    @products = Product.order(:title)
  end
end
