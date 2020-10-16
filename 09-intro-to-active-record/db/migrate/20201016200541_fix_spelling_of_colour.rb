class FixSpellingOfColour < ActiveRecord::Migration[6.0]
  def change
    rename_column :authors, :color, :colour
  end
end
