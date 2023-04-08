class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :activity
      t.float :calories_burned
      t.datetime :activity_date

      t.timestamps
    end
  end
end
