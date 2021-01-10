class CreateRecipesIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes_ingredients, id: false do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
      t.string :quantity
      
    end
  end
end
