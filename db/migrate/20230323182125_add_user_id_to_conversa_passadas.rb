class AddUserIdToConversaPassadas < ActiveRecord::Migration[7.0]
  def change
    add_column :conversa_passadas, :user_id, :integer
  end
end
