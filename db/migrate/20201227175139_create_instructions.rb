class CreateInstructions < ActiveRecord::Migration[6.1]
  def change
    create_table :instructions do |t|
      t.integer :order
      t.string :action

    end
  end
end
