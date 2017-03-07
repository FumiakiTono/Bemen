class MessagesController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @message = Message.new
    @teacher = Teacher.find(2)
  end

  def create
    @message = Message.new(message_post)
    @message.save
    redirect_to messages_path
  end

  private
  def message_post
    params.require(:message).permit(:body, :image).merge(user_id: current_user.id, teacher_id: params[:teacher_id])
  end

end
