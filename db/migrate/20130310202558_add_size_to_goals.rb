class AddSizeToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :size, :integer
  end
end
