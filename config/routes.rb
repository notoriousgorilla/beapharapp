Rails.application.routes.draw do
    resources :collections
    resources :products
    resources :item
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/collection' => 'collections#index', as: :index_collection
  get '/collection/show/:id' => 'collections#show', as: :show_collection
  get '/product/:product_id/items/:id/' => 'products#show', as: :collection_product
  
  get '/product/:product_id/items/:id/show' => 'items#show', as: :show_item
  #get '/item/show/:id' => 'items#show', as: :show_item
  
  #get '/test' => 'products#show', as: :show_product
  
  
end
