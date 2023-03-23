class CreateColegaTradutors < ActiveRecord::Migration[7.0]
  def change
    create_table :colega_tradutors do |t|
      t.string :name
      t.string :url_page

      t.timestamps
    end
  end
end
