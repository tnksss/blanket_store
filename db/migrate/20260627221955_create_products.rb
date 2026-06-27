class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :tag

      t.timestamps
    end
  end
end
