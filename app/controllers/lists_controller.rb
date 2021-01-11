class ListsController < ApplicationController
    #Get Request /lists
    def index
        @lists = List.all 
        render json: @lists
    end

    #GET REQUEST /lists/1
    def show 
        render json: @list
    end

#POST REQUEST /lists
    def create 
        @list = List.new(list_params)
        if @list.save
            render json: @list, status: :created, location: @list
        else 
            render json: @list.errors, status: :unprocessable_entity
        end
    end
# PATCH/PUT request  /lists/1
    def update
        if @list.update(list_params)
            render json: @list
        else
            render json: @list.errors, status: :unprocessable_entity
        end
    end

  # DELETE REQUEST /lists/1
    def destroy
        @list.destroy
    end

  private

    def list_params
      params.require(:list).permit(:client_name, :date_order_made)
    end
end
