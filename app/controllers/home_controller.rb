class HomeController < ApplicationController
  def index
    # 1. Pega todas as categorias únicas direto do banco para montar o menu dinamicamente
    @categories = Product.pluck(:category).uniq.compact

    # 2. Se houver o parâmetro de categoria na URL, filtra; caso contrário, traz tudo
    if params[:category].present?
      @products = Product.includes(product_colors: :variants).where(category: params[:category])
    else
      @products = Product.includes(product_colors: :variants).all
    end
  end
end