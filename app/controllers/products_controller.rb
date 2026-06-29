class ProductsController < ApplicationController
  def show
    @product = Product.includes(product_colors: :variants).find(params[:id])
  end
end
