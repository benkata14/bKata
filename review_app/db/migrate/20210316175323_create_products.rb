class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.float :cost
      t.string :category
      t.string :date
      t.text :description

      t.timestamps
    end
  end
end
