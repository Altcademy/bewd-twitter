class AddIndexesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :username, unique: true
    # unique: true already set for :email
    add_index :users, :email
  end
end
