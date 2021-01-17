class CreateInstructions < ActiveRecord::Migration[6.1]
  def change
    create_table :instructions do |t|
      t.belongs_to :recipe
      t.integer :order
      t.text :action

    end
  end
end
