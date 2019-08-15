class CreateCocktails < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.integer :strength
      t.text :tagline

      t.timestamps
    end
  end
end
