class AddImageCohortSeekingWorkToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_image, :string
    add_column :users, :cohort, :string
    add_column :users, :seeking_work, :datetime
  end
end
