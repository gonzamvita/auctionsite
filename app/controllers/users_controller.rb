class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(entry_params)
    if user.save
      redirect_to(action: 'index', controller: 'users')
    end
  end

  private
  def entry_params
    params.require(:user).permit(:name, :email)
  end
end
