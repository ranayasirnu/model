class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_id, :string
    add_column :users, :location, :string
    add_column :users, :status, :int , :default => 0
  end
end
