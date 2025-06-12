class ChatsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @chats = Chat.involving(current_user)
  end

  def show; end
  def new; end

  def create
    @chat.sender = current_user
    if @chat.save
      redirect_to @chat, notice: 'Chat was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @chat.update(chat_params)
      redirect_to @chat, notice: 'Chat updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @chat.destroy
    redirect_to chats_path, notice: "Chat deleted."
  end

  private

  def chat_params
    params.require(:chat).permit(:receiver_id)
  end
end
