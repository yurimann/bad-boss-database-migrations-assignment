class ChangeLocations < ActiveRecord::Migration[5.0]
  def change
  reversible do |dir|

      dir.up   { change_table :locations do |l|
                 l.string :city
                 l.string :weather
                 l.remove :name, :address, :capacity
                 end}

      dir.down { change_table :locations do |l|
                 l.string :name
                 l.string :address
                 l.integer :capacity
                 l.remove :city, :weather
                 end}

    end
  end
end
