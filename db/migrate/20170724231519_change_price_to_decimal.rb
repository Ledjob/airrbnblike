class ChangePriceToDecimal < ActiveRecord::Migration
  def self.up
    change_column :rooms, :price, :decimal, :precision => 10, :scale => 8
  end
  
  def self.down
  change_column :rooms, :price, :integer
  end
end
