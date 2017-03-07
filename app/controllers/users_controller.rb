class UsersController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @posts = Post.all
  end

  def show
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find(params[:id])
    if user.id = current_user.id
      user.update(user_params)
    end
    binding.pry
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :age, :email)
  end

end
