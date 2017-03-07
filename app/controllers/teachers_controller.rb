class TeachersController < ApplicationController
  before_action :authenticate_teacher!, only: [:edit, :update]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
  end

  def update
    teacher = Teacher.find(params[:id])
    if teacher.id = current_teacher.id
      teacher.update(teacher_params)
    end
    redirect_to root_path
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :age, :email)
  end

end
