class UsersController < ApplicationController

  def show
    @books = current_user.books
  end
  
  private
  
  def user_params
     params.require(:user).permit(:name, :email)
  end
end
