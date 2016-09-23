class AddLastUpdatedAndQuadrantIdToTasks < ActiveRecord::Migration[5.0]
  def change
		add_column :tasks, :last_updated, :timestamp
  	add_column :tasks, :quadrant_id, :integer
  end
end
