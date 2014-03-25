class AddWebsiteBlogToUser < ActiveRecord::Migration
  def change
    add_column :users, :blog, :string
    add_column :users, :website, :string
  end
end
