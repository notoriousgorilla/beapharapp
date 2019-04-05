class Collection < ApplicationRecord
    
    has_many :products
    has_many :items, through: :products
    
end
