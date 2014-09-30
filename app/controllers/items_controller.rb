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
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to :back, notice: "Item marked complete successfully "
    end
  end

  def edit
  end

  private

  def private_params
    params.require(:item).permit(:name)
  end
end
