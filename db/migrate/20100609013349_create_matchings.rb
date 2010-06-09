class CreateMatchings < ActiveRecord::Migration
  def self.up
    create_table :matchings do |t|
      t.string :uid, :null => false
      t.timestamps
    end
    add_index :matchings, [:uid], :unique => true
  end

  def self.down
    drop_table :matchings
  end
end
