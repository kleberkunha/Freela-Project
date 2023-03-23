class AddUserIdToLinkExternos < ActiveRecord::Migration[7.0]
  def change
    add_column :link_externos, :user_id, :integer
  end
end
