class ListsController < ApplicationController
    before_action :find_list, only: [:show, :update, :delete]

    #Get Request /lists
    def index
        # binding.pry
        @lists = List.all.reverse 
        render json: @lists
    end

    #GET REQUEST /lists/1
    def show 
        @list = List.find(params[:id])
        render json: @list 
    end

#POST REQUEST /lists
    def create 
        @list = List.new(list_params)        
        @item = Item.find_by(product_name: params[:product_name])
        @list_item = ListItem.new(quantity: params[:quantity])
        @list_item.list=@list  # belongs to
        @list.list_items << @list_item # has many
        @list_item.item=@item #belongs to
        @item.list_items << @list_item #has many 
# << concat Adds one or more records to collection by setting foreign keys to association's primary key
        if @list.save 
            render json: @list, status: :created, location: @list
        else 
            render json: @list.errors, status: :unprocessable_entity
        end
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
    # @list_item = ListItem.find(params[:id])
    # @item = Item.find(params[:id])
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