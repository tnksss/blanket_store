class Product < ApplicationRecord
  has_many :product_colors, dependent: :destroy
  has_many :variants, through: :product_colors

  validates :name, :category, presence: true

  # Método que calcula o menor preço entre todas as variantes do produto
  def starting_price
    variants.minimum(:price)
  end
end