class CreateProductColors < ActiveRecord::Migration[8.1]
  def change
    create_table :product_colors do |t|
      t.references :product, null: false, foreign_key: true
      t.string :color_name

      t.timestamps
    end
  end
end
