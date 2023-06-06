class UsersController < ApplicationController
  
  def create
    @post_image = PostImage.new(post_image_params)
    if @book.save
      flash[:notice] = "successfully updated."
      redirect_to book_path(@book.id)
    else
      flash.now[:alret] = "error"
      @books = Book.all
      render "index"
    end
  end
  
  def edit
    @user = User
    
  end
end
