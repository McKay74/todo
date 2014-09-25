class ItemsController < ApplicationController
  def index
  end

  def create
    @list = List.find(params[:list_id])
    @item = @list.items.new(private_params)
    if @item.save
      redirect_to @list, notice: "Item created successfully"
    end
  end

  def destroy
  end

  def edit
  end

  private

  def private_params
    params.require(:item).permit(:name)
  end
end
