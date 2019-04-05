class ProductsController < ApplicationController
    
    def index
        @products = Product.all    
    end
    
    def show
        @collection = Product.find(params[:product_id]) #notice the nested Collection => Product(product_id) => Items :through Collection
        @items = @collection.items
    end    
    
end
