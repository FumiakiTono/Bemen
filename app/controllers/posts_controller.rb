class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def search
    @posts = Post.where("title LIKE(?)", "%#{params[:keyword]}%").limit(10)
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :detail, :teacher_id)
  end

end
