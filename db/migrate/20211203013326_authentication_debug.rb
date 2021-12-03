class AuthenticationDebug < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :password_confirmation, :password_digest
  end
end
