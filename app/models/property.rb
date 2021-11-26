class Property < ApplicationRecord
   belongs_to :product, foreign_key: true, optional: true
   
   has_one_attached :image
   
   validates :title, presence: true
   validates :image , presence: true
   validates :quantity , presence: true
end
