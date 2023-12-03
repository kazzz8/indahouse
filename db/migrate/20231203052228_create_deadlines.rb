class CreateDeadlines < ActiveRecord::Migration[7.0]
  def change
    create_table :deadlines do |t|
      t.date       :deadline,  null: false
      t.date       :completed
      t.references :task,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
