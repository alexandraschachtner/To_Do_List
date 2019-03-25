class AddWhoToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :who, :string
  end
end
