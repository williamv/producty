require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  test "should not save goal missing required fields" do
     goal = Goal.new
     assert !goal.save, "Saved the goal without a goal, size, and completion %"
   end


end
