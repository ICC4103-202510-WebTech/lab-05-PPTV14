class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index; end
  def show; end

  def new
    redirect_to users_path, alert: "Not authorized"
  end

  def create
    redirect_to users_path, alert: "Not authorized"
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "User deleted."
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
