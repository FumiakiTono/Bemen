class ReviewsController < ApplicationController

  def new
    @teacher = Teacher.find(params[:teacher_id])
    @review  = Review.new
  end

  def create
    @review  = Review.new(create_params)
    @review.save
    redirect_to root_path
  end

  private
  def create_params
    params.require(:review).permit(:body, :rate)
  end

end
