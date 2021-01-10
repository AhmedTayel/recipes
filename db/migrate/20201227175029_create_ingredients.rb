class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :name_scientific
      t.text :description
      t.string :itis_id
      t.string :wikipedia_id
      t.string :picture_file_name
      t.string :picture_content_type
      t.string :picture_file_size
      t.string :picture_updated_at
      t.string :legacy_id
      t.string :food_group
      t.string :food_subgroup
      t.string :food_type
      t.string :created_at
      t.string :updated_at
      t.string :creator_id
      t.string :updater_id
      t.string :export_to_afcdb
      t.string :category
      t.string :ncbi_taxonomy_id
      t.string :export_to_foodb
      t.string :public_id

    end
  end
end
