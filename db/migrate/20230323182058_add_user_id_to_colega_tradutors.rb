class AddUserIdToColegaTradutors < ActiveRecord::Migration[7.0]
  def change
    add_column :colega_tradutors, :user_id, :integer
  end
end
