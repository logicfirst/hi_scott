class AddFavoriteColorToAuthorTable < ActiveRecord::Migration[6.0]
  def change
    add_column :authors, :color, :string
  end
end
