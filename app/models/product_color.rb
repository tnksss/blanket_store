class ProductColor < ApplicationRecord
  # Relacionamentos: Pertence a um produto e possui muitas variantes
  belongs_to :product
  has_many :variants, dependent: :destroy

  # Validações de integridade
  validates :color_name, presence: true
end