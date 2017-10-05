class CreateSpecies < ActiveRecord::Migration[5.1]
  def change
    create_table :species do |t|
      t.string :sci_name
      t.string :comm_name
      t.string :flower_time
      t.string :colour
      t.boolean :epiphyte
      t.text :description

      t.timestamps
    end
  end
end
