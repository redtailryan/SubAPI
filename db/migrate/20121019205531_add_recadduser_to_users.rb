class AddRecadduserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recadduser, :integer, default: 10908
  end
end
