class ItemsController < ApplicationController
    
    def show
        @item = Item.find(params[:product_id]) #notice the nested Collection => Product(product_id) => Items :through Collection
        #@items = @collection.items
    end
    
end
