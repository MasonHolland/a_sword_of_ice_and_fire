class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :sigil
      t.string :words
    end
  end
end
