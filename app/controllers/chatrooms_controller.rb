class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new

    @chatrooms = current_user.chatrooms
    authorize @chatroom
  end

  def index
    @chatrooms = policy_scope(Chatroom).all
    authorize @chatrooms
  end
end
