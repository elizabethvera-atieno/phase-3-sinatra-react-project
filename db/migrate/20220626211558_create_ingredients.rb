class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :ing1
      t.string :ing2
      t.string :ing3
      t.string :ing4
      t.integer :cocktail_id
      t.timestamps
    end
  end
end
