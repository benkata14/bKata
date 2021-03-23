class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column(:review, :product_id, :string)
  end

  def up
    change_column(:review, :product_id, :string)
  end

  def down
    change_column(:review, :product_id, :integer)
  end
end
