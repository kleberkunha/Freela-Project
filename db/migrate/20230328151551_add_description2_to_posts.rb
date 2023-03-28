class AddDescription2ToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :descriptionTwo, :text
  end
end
