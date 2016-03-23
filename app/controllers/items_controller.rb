class ItemsController < ApplicationController
  def index
    render json: Item.all
  end
  def show
    render json: Item.find(params[:id])
  end
  def create
    @item = Item.create!(item_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end
  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    head :no_content
  end

  private
  def item_params
    params.require(:item).permit(:name, :category, :effect)
  end
end
