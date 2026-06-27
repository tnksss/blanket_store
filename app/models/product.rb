class Product < ApplicationRecord
    has_many :product_colors, dependent: :destroy

    validates :name, presence: true
    validates :category, presence: true
end
