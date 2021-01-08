class ItemsController < ApplicationController
    #Get Request /items
    def index
        @items = Item.all 
        render json: @items 
    end

    #GET REQUEST /items/1
    def show 
        render json: @item 
    end

#POST REQUEST /items
    def create 
        @item = Item.new(item_params)
        if @item.save
            render json: @item, status: :created, location: @item 
        else 
            render json: @item.errors, status: :unprocessable_entity
        end
    end
# PATCH/PUT request  /items/1
    def update
        if @item.update(item_params)
            render json: @item
        else
            render json: @item.errors, status: :unprocessable_entity
        end
    end

  # DELETE REQUEST /items/1
    def destroy
    @item.destroy
    end

  private

    def item_params
      params.require(:item).permit(:name, :price)
    end
end
