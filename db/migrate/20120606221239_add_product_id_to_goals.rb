class AddProductIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :product_id, :int
    execute("UPDATE Goals set product_id = 1")
  end
end
