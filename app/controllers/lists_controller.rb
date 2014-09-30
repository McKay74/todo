class ListsController < ApplicationController
  before_filter :authenticate_user! , only: [:show]

  def index
    @lists = List.all
    authorize @lists
  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    authorize @list 
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
    @item = @list.items.new
    @items = @list.items

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

  def list_params
    params.require(:list).permit(:name)
  end
end
