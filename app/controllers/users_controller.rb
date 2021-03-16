class API::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:username).permit(:username)
  end
end
