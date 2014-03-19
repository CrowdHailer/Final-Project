class AddVerifiedMakerToUser < ActiveRecord::Migration
  def change
    add_column :users, :verified_maker, :boolean, default: false
  end
end
