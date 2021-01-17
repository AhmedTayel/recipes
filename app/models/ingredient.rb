class Ingredient < ApplicationRecord
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients

  attr_accessor :ingredient_token, :length
  #Initializes an instance thats takes an entry from the ingredients as a string and tokenizes it
  def self.new_instance ingredient_string
    ingredient = self.new
    ingredient.ingredient_token = ingredient_string.split(" ")
    ingredient.length =  ingredient.ingredient_token.length
    ingredient
  end

  #Returns the first two tokens assumed to be an amount and a unit
  def get_amount 
    @amount = @ingredient_token.shift(2).join(" ")
  end
  #Returns the remaining tokens
  def get_name 
    @name = @ingredient_token.pop(@length).join(" ")
  end
  #Returns the ingredient object from the database if found
  def exists?
    Ingredient.find_by(name: "#{@name}")
  end
end
