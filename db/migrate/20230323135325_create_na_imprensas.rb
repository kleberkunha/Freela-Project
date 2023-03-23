class CreateNaImprensas < ActiveRecord::Migration[7.0]
  def change
    create_table :na_imprensas do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
