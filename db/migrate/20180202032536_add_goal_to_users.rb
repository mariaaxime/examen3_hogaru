class AddGoalToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :goal, :integer
  end
end
