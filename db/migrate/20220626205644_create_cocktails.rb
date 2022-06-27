class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :type
      t.string :glass
      t.string :image
      t.timestamps
    end
  end
end
