class CollectionsController < ApplicationController
    
    def index
        @collections = Collection.all
    end
    
    def show
        @collection = Collection.find(params[:id])
        @products = @collection.products
        
    end
    
end
