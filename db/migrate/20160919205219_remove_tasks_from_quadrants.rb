class RemoveTasksFromQuadrants < ActiveRecord::Migration[5.0]
  def change
  	remove_column :quadrants, :task_id
  end
end
