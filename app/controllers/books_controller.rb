class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @book = Book.all
  end

  def show
    respond_to do |format|
      format.html
      format.csv
      format.json
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
