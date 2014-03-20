class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'CrowdHailer', uid: '2', provider: 'google')
  end

  def edit_details
  	@user = current_user
    @saved = params[:saved]
  end

  def update_details
    @user = current_user
    @user.update_attributes(user_params)
    saved = @user.save
    redirect_to "/edit?#{'saved=true' if saved }"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :cohort)
  end
end