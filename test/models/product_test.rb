require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "nao deve salvar produto sem nome" do
    product = Product.new(category: "Cama")
    assert_not product.save, "Salvou o produto sem nome!"
  end

  test "nao deve salvar produto sem categoria" do
    product = Product.new(name: "Manta Confort")
    assert_not product.save, "Salvou o produto sem categoria!"
  end

  test "deve salvar produto com todos os campos validos" do
    product = Product.new(name: "Jogo de Lençol Luxo", category: "Cama")
    assert product.save
  end
end
