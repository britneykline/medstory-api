class AddUserIdCollumnToVaccines < ActiveRecord::Migration[6.1]
  def change
    add_column :vaccines, :user_id, :string 
  end
end
