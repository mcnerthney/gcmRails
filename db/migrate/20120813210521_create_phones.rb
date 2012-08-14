class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.text :deviceid
      t.text :gcmid

      t.timestamps
    end
  end
end
