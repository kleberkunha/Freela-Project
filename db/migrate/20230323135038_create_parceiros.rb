class CreateParceiros < ActiveRecord::Migration[7.0]
  def change
    create_table :parceiros do |t|
      t.string :name
      t.string :url_page

      t.timestamps
    end
  end
end
