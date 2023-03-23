class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :author
      t.string :link_page

      t.timestamps
    end
  end
end
