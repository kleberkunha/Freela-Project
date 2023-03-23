class AddUserIdToParceiros < ActiveRecord::Migration[7.0]
  def change
    add_column :parceiros, :user_id, :integer
  end
end
