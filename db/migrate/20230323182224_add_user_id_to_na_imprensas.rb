class AddUserIdToNaImprensas < ActiveRecord::Migration[7.0]
  def change
    add_column :na_imprensas, :user_id, :integer
  end
end
