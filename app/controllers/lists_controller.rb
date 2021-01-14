class ListsController < ApplicationController
    before_action :find_list, only: [:show, :update, :delete]

    #Get Request /lists
    def index
        binding.pry
        @lists = List.all 
        render json: @lists
    end

    #GET REQUEST /lists/1
    # def show 
    #     render json: @list
    # end

#POST REQUEST /lists
    def create 
        # binding.pry
        @list = List.new(list_params)
        find_item = Item.find_by(product_name: list_params[:product_name])
        if @list.save
            render json: @list, status: :created, location: @list
        else 
            render json: @list.errors, status: :unprocessable_entity
        end
    end

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
        @item = Item.find(@list.item_id)
        # binding.pry 
        @list.destroy 
    end

  private

  def find_list
    @list = List.find(params[:id])
end

    def list_params
      params.require(:list).permit(:client_name, :date_order_made, :total_amount, :product_name, :quantity )
    end
end
