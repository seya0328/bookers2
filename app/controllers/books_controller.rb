class BooksController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    if @book.save
      flash[:notice] = "successfully created."
      redirect_to book_path(@book.id)
    else
      flash[:notice]   = "error"
      @books = Book.all
      render :index
    end
  end
  
  def index
    @books = Book.all  
    @book = Book.new
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
  
  def edit
    @book = Book.find(params[:id])
  end
  
    private
    
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
