class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
<<<<<<< HEAD

  	@showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'CrowdHailer', uid: '2', provider: 'google', profile_image: 'https://avatars1.githubusercontent.com/u/6339191?s=460')
  	
=======
  	@showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'CrowdHailer', uid: '2', provider: 'google')
>>>>>>> master
  end

  def edit_details
  	@user = current_user
  end

end