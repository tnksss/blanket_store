require "test_helper"

class ProductColorTest < ActiveSupport::TestCase
  setup do
    @product = Product.create!(name: "Manta Premium", category: "Cama")
  end

  test "nao deve salvar cor sem nome" do
    color = ProductColor.new(product: @product)
    assert_not color.save, "Salvou a cor sem nome!"
  end

  test "nao deve salvar cor sem produto associado" do
    color = ProductColor.new(color_name: "Verde Oliva")
    assert_not color.save, "Salvou a cor sem produto!"
  end
end