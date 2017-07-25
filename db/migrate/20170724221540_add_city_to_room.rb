class AddCityToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :city, :string
  end
end
