class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'CrowdHailer', uid: '2', provider: 'google')
  end

  def edit_details
  	@user = current_user
  end

end