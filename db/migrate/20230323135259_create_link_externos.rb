class CreateLinkExternos < ActiveRecord::Migration[7.0]
  def change
    create_table :link_externos do |t|
      t.string :title
      t.string :url_page

      t.timestamps
    end
  end
end
