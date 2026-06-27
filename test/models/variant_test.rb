require "test_helper"

class VariantTest < ActiveSupport::TestCase
  setup do
    product = Product.create!(name: "Toalha Egípcia", category: "Banho")
    @color = ProductColor.create!(product: product, color_name: "Branco Off")
  end

  test "nao deve salvar variante com preco invalido" do
    v1 = Variant.new(product_color: @color, size: "Jumbo", price: -10.00, stock: 5)
    v2 = Variant.new(product_color: @color, size: "Jumbo", price: 0.00, stock: 5)
    
    assert_not v1.save, "Salvou variante com preço negativo!"
    assert_not v2.save, "Salvou variante com preço zero!"
  end

  test "nao deve salvar variante com estoque negativo" do
    variant = Variant.new(product_color: @color, size: "Padrão", price: 89.90, stock: -1)
    assert_not variant.save, "Salvou variante com estoque negativo!"
  end

  test "deve salvar variante com todos os campos validos" do
    variant = Variant.new(product_color: @color, size: "Padrão", price: 89.90, stock: 10)
    assert variant.save
  end
end