class BooksController < ApplicationController
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
end
