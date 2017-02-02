# require_relative '20170202181856_change_locations'
class FixLocationsMigration < ActiveRecord::Migration[5.0]
  def change
    revert do
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
                     end}
      end
    end
  end
end
