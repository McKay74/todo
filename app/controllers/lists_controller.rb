class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params.require(:list).permit(:name))
    if @list.save
      flash[:notice] = "List was created."
      redirect_to @list
    else
      flash[:error] = "There was an error creating the list.  Please try again."
      render :new
    end
  end

  def update
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    name = @list.name

    if @list.destroy
      flash[:notice] = "\"#{name}\" was deleted successfully."
      redirect_to lists_path
    else
      flash[:error] = "There was an error deleteing the list."
      render :show
    end
  end

  def edit
  end
end
