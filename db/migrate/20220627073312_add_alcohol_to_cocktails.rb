class AddAlcoholToCocktails < ActiveRecord::Migration[6.1]
  def change
    add_column :cocktails, :alcohol, :string
  end
end
