class BackscratchersController < ApplicationController
    def index
        backscratchers = Backscratcher.all
        render json: backscratchers.as_json(except: [:created_at, :updated_at])
    end

    def create 
        #byebug
        backscratcher = Backscratcher.create(item_name: params[:item_name], item_description: params[:item_description], item_size: params[:item_size], item_cost: params[:item_cost])
        render json: backscratcher
    end
    
    def show
        backscratcher = Backscratcher.find(params[:id])
        render json: backscratcher
    end

    def destroy 
        backscratcher = Backscratcher.find(params[:id])
        backscratcher.destroy
    end
     
    def update
        update_backscratcher = Backscratcher.find(params[:id])
        backscratcher = update_backscratcher.update(item_name: params[:item_name], item_description: params[:item_description], item_size: params[:item_size], item_cost: params[:item_cost])
        render json: backscratcher
    end
        
     
end
