class UsersController < ApplicationController

  def show
    @books = current_user.books
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path, notice: "編集を完了しました。"
    else
      render action: :edit
    end
  end
  
  private
  
  def user_params
     params.require(:user).permit(:name, :email)
  end
end
