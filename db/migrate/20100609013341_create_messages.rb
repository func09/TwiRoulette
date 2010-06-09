class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :user_id, :null => false
      t.string :body, :null => false
      t.integer :matching_id
      t.boolean :matched
      t.datetime :matched_at
      t.timestamps
    end
    add_index :messages, [:user_id]
  end

  def self.down
    drop_table :messages
  end
end
