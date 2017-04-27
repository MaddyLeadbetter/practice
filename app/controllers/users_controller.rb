class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email)) #{name: params[:name], email: params[:email]})
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:name, :email))
    if @user.save
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end
end
