class Product < ApplicationRecord
    has_one_attached :image
    validates :sku , presence: true, length: {is: 12}
    validates :title , presence: true
    validates :price , numericality: true
    validates :quantity , numericality: { only_integer: true }   
    validates :image , presence: true 
end
