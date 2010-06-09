class CreateMatchings < ActiveRecord::Migration
  def self.up
    create_table :matchings do |t|
      t.string :uid, :null => false
      t.integer :user_a_id, :null => false
      t.integer :user_a_message_id, :null => false
      t.integer :user_b_id, :null => false
      t.integer :user_b_message_id, :null => false
      # TODO: screen_nameは変更になる可能性があるので注意
      t.timestamps
    end
    add_index :matchings, [:uid], :unique => true
  end

  def self.down
    drop_table :matchings
  end
end
