class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to new_post_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :detail, :teacher_id)
  end

end
