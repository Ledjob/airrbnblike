class ChangeTotalToDecimal < ActiveRecord::Migration
  def self.up
    change_column :reservations, :total, :decimal, :precision => 10, :scale => 8
  end
  
  def self.down
  change_column :reservations, :total, :integer
  end
end