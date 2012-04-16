class SiteController < ApplicationController
  def index
    @books = Book.paginate(:per_page => 20, :page => params[:page]).entries
  end
end
