class CreateVariants < ActiveRecord::Migration[8.1]
  def change
    create_table :variants do |t|
      t.references :product_color, null: false, foreign_key: true
      t.string :size
      t.decimal :price, precision: 10, scale: 2
      t.integer :stock
      t.string :sku

      t.timestamps
    end
  end
end
