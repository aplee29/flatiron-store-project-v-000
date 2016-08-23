class CartsController < ApplicationController

  def show
  end

  def checkout
    current_cart.checkout
    current_cart.cart_status_change
    current_cart.destroy
    flash[:notice] = "You have successfully checked out your cart."
    redirect_to cart_path(current_cart)
  end

end