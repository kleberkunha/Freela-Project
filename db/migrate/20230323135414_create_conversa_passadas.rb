class CreateConversaPassadas < ActiveRecord::Migration[7.0]
  def change
    create_table :conversa_passadas do |t|
      t.string :title
      t.text :description
      t.string :created_by

      t.timestamps
    end
  end
end
