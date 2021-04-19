class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :password_digest
      t.string :fname
      t.date :dob
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
