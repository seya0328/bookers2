class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    
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
  
    private
    
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end

