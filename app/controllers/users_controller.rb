class UsersController < ApplicationController
  before_action :is_elder?

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
  end
end