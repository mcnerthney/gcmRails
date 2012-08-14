class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :phone

      t.timestamps
    end
    add_index :messages, :phone_id
  end
end
