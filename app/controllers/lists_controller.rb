class ListsController < ApplicationController
    before_action :find_list, only: [:show, :update, :delete]

    #Get Request /lists
    def index
        # binding.pry
        @lists = List.all.reverse 
        # @item = Item.find(params[:item_id])
        # @lists = @item.lists.all
        render json: @lists
    end


#POST REQUEST /lists
    def create 
        #make list item (set quantity based on info in params)
        #tell list item_list it belongs to and item it belongs to 
        @list = List.new(list_params)
        @item = Item.find_by(product_name: params[:product_name])
        @list_item = ListItem.new(quantity: params[:quantity])
        # @list_item.quantity
        @list_item.list=@list 
        @list_item.item=@item 
        # @list_item.save
        # binding.pry
        # item.list_item

        if @list.save 
            render json: @list, status: :created, location: @list
        else 
            render json: @list.errors, status: :unprocessable_entity
        end
        # @item.save 
        # @list_item.save
        # binding.pry
    end

#GET REQUEST /lists/1
    def show 
        @list = List.find(params[:id])
        render json: @list 
    end

    

# PATCH/PUT request  /lists/1
    def update
        @list = List.find(params[:id])
        @item = Item.find(@list.item_id)
        if @list.update(list_params)
            render json: @list
        else
            render json: @list.errors, status: :unprocessable_entity
        end
    end

  # DELETE REQUEST /lists/1
    def destroy
        @list = List.find(params[:id])
        # binding.pry 
        @list.destroy 
    end

  private

  def find_list
    @list = List.find(params[:id])
end

    def list_params
      params.require(:list).permit(
          :client_name, :date_order_made, :product_name,  
      list_items_attributes: [
          :quantity
            ]
        )
    end
end
# :product_name, :quantity