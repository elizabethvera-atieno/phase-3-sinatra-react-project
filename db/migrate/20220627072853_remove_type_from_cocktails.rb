class RemoveTypeFromCocktails < ActiveRecord::Migration[6.1]
  def change
    remove_column :cocktails, :type, :string
  end
end
