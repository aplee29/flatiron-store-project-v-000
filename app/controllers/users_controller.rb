class UsersController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end