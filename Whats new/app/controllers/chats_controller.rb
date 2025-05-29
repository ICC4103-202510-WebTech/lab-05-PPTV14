class ChatsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @chats = Chat.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
  end

  def show; end
  def new; end

  def create
    @chat.sender_id = current_user.id
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
