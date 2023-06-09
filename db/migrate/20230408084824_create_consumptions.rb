class CreateConsumptions < ActiveRecord::Migration[7.0]
  def change
    create_table :consumptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :quantity
      t.datetime :consumed_at

      t.timestamps
    end
  end
end
