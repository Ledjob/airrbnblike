class AddFullnameToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :, :string
  end
end
