class AddGcmidColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Gcmid, :string
  end
end
