class AddEncryptedPasswordToUsers < ActiveRecord::Migration[8.0]
  def change
    unless column_exists?(:users, :encrypted_password)
      add_column :users, :encrypted_password, :string, null: false, default: ""
    end
  end
end
