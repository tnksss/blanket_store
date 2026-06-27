class Variant < ApplicationRecord
  # Relacionamento: Pertence a uma cor de produto
  belongs_to :product_color

  # Validações de presença
  validates :size, :price, :stock, presence: true

  # Validações numéricas (A segurança do nosso e-commerce)
  validates :price, numericality: { greater_than: 0 }
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end