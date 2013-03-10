class AddCompletionAndSizeToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :completion_percentage, :integer
  end
end
