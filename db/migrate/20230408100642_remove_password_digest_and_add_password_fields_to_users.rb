class RemovePasswordDigestAndAddPasswordFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password_digest, :string
    add_column :users, :password, :string
    add_column :users, :password_confirmation, :string
  end
end
