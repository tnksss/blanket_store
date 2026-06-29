class AddImageUrlToProductColors < ActiveRecord::Migration[8.1]
  def change
    add_column :product_colors, :image_url, :string
  end
end
