class ChangeDeadkineColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :deadlines, :deadline, :due
  end
end
