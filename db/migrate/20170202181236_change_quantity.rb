class ChangeQuantity < ActiveRecord::Migration[5.0]
  def change
    change_column :parts, :quantity, :decimal
  end
end
