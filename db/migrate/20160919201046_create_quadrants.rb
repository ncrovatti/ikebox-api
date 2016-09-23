class CreateQuadrants < ActiveRecord::Migration[5.0]
  def change
    create_table :quadrants do |t|
      t.string :title
      t.string :color
      t.integer :magnitude
      t.integer :task_id

      t.timestamps
    end
  end
end
