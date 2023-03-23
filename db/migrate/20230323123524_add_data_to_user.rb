class AddDataToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :phone, :string
    add_column :users, :description, :text
    add_column :users, :home_main_text, :text
    add_column :users, :conversas_passadas_id, :integer
    add_column :users, :na_imprensa_id, :integer
    add_column :users, :links_externos_id, :integer
    add_column :users, :colegas_tradutores_id, :integer
    add_column :users, :parceiros_id, :integer
    add_column :users, :books_id, :integer
  end
end
