class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def show
    @post = @user.posts.all
    render
  end

  private

  def set_user
    @user = User.find(params[:id]) if params[:id].present?
  end
end
