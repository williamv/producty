require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  test "should not save when missing percent and size" do
     goal = Goal.new(:goal => "Lonely Goal")
     assert !goal.save, "Shouldn't save a goal without percent and size"
   end

  test "should not save goal when missing size and goal" do
     goal = Goal.new(:completion_percentage => "Lonely Completion Percentage")
     assert !goal.save, "Shouldn't save a goal without goal and size"
   end

  test "should not save goal when missing completion percentage and goal" do
     goal = Goal.new(:size => "1")
     assert !goal.save, "Shouldn't save a goal without completion percentage and size"
   end

  test "should only save with goal, percentage, size" do
     goal = Goal.new(:goal => "social goals", :completion_percentage => "100", :size => "1")
     assert !goal.save, "Should save the goal with goal, completion, size"
   end

end
