class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @post_image = PostImage.new(post_image_params)
  end
  
  def index
    @books = Book.all  
  end
    
  def show
    @book = Book.find(params[:id])  
  end
  
  def update
    
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:notice] = "Book was successfully updated."
    
    redirect_to book_path(@book.id) 
    else
    render "edit"
    end
  end
end
