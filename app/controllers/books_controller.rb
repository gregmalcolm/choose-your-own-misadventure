class BooksController < ApplicationController
  respond_to :json

  def index
    @books = Book.paginate(:per_page => 1, :page => params[:page])

    respond_to do |format|
      format.json {
        render :json => {
          :current_page => @books.current_page,
          :per_page => @books.per_page,
          :total_entries => @books.total_entries,
          :entries => @books
        }
      }
    end
  end

  def create
    @book = Book.new(params[:book])

    if @book.save
      respond_with @book, status: :created, location: @book
    else
      respond_with @book.errors, status: :unprocessable_entity
    end    
  end
end
