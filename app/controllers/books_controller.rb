class BooksController < ApplicationController
  def bookshelf
    @books = Book.all
  end
end