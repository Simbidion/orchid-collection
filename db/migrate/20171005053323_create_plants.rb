class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.references :species, foreign_key: true
      t.date :germination_date
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
