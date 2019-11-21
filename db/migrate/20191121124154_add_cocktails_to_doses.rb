class AddCocktailsToDoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :doses, :cocktails, foreign_key: true
  end
end
