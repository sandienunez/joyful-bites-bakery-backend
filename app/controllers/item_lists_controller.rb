class ItemListsController < ApplicationController
    #Get Request  /item_lists
    def index
        @item_lists = ItemList.all 
        render json: @item_lists
    end

    #GET REQUEST /item_lists/1
    def show 
        render json: @item_list
    end

    #POST REQUEST  /item_lists
    def create 
        @item_list = Item.new(item_list_params)
        if @item_list.save
            render json: @item_list, status: :created, location: @item_list 
        else 
            render json: @item_list.errors, status: :unprocessable_entity
        end
    end
# PATCH/PUT request  /item_lists/1
    def update
        if @item_list.update(item_list_params)
            render json: @item_list
        else
            render json: @item_list.errors, status: :unprocessable_entity
        end
    end

  # DELETE REQUEST /item_lists/1
    def destroy
    @item_list.destroy
    end

  private

    def item_list_params
      params.require(:item_list).permit(:item_name, :item_price, :item_quantity, :total)
    end
end
