class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.integer :followingUser_id
      t.integer :followedUser_id

      t.timestamps
    end
  end
end
