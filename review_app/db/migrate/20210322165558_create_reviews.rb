class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :author
      t.integer :product_id
      t.integer :rating
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
