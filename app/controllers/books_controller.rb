class BooksController < ApplicationController
  #before_filter :authenticate_user!  
  respond_to :json

  def index
    @books = Book.paginate(:per_page => 20, :page => params[:page]).order('updated_at DESC')
  end

  def create
    @book = Book.new(params[:book])

    if @book.save
      respond_with @book, status: :created, location: @book
    else
      respond_with @book.errors, status: :unprocessable_entity
    end    
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      respond_with @book, status: :deleted
    else
      respond_with @book.errors, status: :unprocessable_entity
    end
  end
end
