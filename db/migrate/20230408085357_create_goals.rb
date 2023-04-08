class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.references :user, null: false, foreign_key: true
      t.float :target_weight
      t.date :goal_date
      t.float :progress

      t.timestamps
    end
  end
end
