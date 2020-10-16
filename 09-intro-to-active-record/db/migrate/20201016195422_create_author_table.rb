class CreateAuthorTable < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :favorite_number
    end
  end
end
