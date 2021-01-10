require 'json'

class FoodParser

  def self.load
    

    
    begin
      c = JSON.load(File.read('./Food.json'))
    rescue
      raise "JSON parse error!"
    end
    c.each do |ingredient|
      Ingredient.create(name: "#{ingredient["name"]}", name_scientific: "#{ingredient["name_scientific"]}",description: "#{ingredient["description"]}",
      itis_id: "#{ingredient["itis_id"]}",wikipedia_id: "#{ingredient["wikipedia_id"]}",picture_file_name: "#{ingredient["picture_file_name"]}", picture_content_type: "#{ingredient["picture_content_type"]}",
      picture_file_size: "#{ingredient["picture_file_size"]}", picture_updated_at: "#{ingredient["picture_updated_at"]}", legacy_id: "#{ingredient["legacy_id"]}", food_group: "#{ingredient["food_group"]}",
      food_subgroup: "#{ingredient["food_subgroup"]}", food_type: "#{ingredient["food_type"]}", public_id: "#{ingredient["public_id"]}")
    end
  end

end