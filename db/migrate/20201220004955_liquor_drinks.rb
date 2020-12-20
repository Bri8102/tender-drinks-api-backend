class LiquorDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :liquor_drinks do |t|
      t.references :liquor, null: false, foreign_key: true
      t.references :cocktail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
