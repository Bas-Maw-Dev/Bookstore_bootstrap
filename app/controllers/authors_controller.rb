class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(:second_name)
  end
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(first_name: "...", second_name: "...")

    if @author.save
      redirect_to @author
    else
      render :new, status: :unprocessable_entity
    end
  end
end
