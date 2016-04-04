class AddNewColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :add_column, :string
    add_column :users, :User, :string
    add_column :users, :friend, :string
    add_column :users, :string, :string
  end
end
