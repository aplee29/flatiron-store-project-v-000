class LineItemsController < ApplicationController
  before_action :create_new_cart, only: :create

  def create
    current_cart = current_user.current_cart
    new_line = current_cart.add_item(params[:item_id])
    new_line.save
    redirect_to cart_path(current_cart)
  end

  private

  def create_new_cart
    if current_cart.nil?
      new_cart = current_user.carts.create
      current_user.current_cart = new_cart
    end
  end

end