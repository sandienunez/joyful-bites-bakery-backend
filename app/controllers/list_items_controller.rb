class ListItemsController < ApplicationController
    #Get Request  /list_items
    def index
        @list_items = ListItem.all 
        # binding.pry 
        render json: @list_items
    end

    #GET REQUEST /list_items/1
    def show 
        render json: @list_item
    end

    #POST REQUEST  /list_items
    def create 
        @list_item = ListItem.new(list_item_params)
        if @list_item.save
            render json: @list_item, status: :created, location: @list_item
        else 
            render json: @list_item.errors, status: :unprocessable_entity
        end
    end
# PATCH/PUT request  /list_items/1
    def update
        if @list_item.update(list_item_params)
            render json: @list_item
        else
            render json: @list_item.errors, status: :unprocessable_entity
        end
    end

  # DELETE REQUEST /list_items/1
    def destroy
    @list_item.destroy
    end

  private

    def list_item_params
      params.require(:list_item).permit(:quantity, :item_id, :list_id)
    end
end
