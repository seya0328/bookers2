class UsersController < ApplicationController
  
  def create
    @user = PostImage.new(user_params)
    if @user.save
      flash[:notice] = "successfully updated."
      redirect_to book_path(@user.id)
    else
      flash.now[:alret] = "error"
      @users = Book.all
      render "index"
    end
  end
  
  def edit
    @user = User
    
  end
end
