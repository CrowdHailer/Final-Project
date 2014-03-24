class AddStackoverflowToUser < ActiveRecord::Migration
  def change
    add_column :users, :stackoverflow, :string
  end
end
