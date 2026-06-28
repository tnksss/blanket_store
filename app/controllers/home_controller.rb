class HomeController < ApplicationController
  def index
    # Busca todos os produtos do banco de dados trazendo junto as cores e variantes (Evita o problema do N+1)
    @products = Product.includes(product_colors: :variants).all
  end
end