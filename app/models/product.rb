class Product < ApplicationRecord
    belongs_to :category, optional: true
    has_many :properties, dependent: :destroy

    has_one_attached :image

    validates :sku , presence: true, length: {is: 12}
    validates :title , presence: true
    validates :price , numericality: true
    validates :image , presence: true
    validates :cateID, presence: true
end