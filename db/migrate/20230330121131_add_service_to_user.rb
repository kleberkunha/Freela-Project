class AddServiceToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :service1, :text
    add_column :users, :service2, :text
    add_column :users, :service3, :text
    add_column :users, :service4, :text
  end
end
