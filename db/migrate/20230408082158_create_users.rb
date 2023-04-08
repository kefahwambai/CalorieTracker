class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :age
      t.string :email
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
