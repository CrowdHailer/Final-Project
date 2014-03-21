class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.find_by_github_username(params['github_username'])
    @user = current_user
    redirect_to root_path, alert: 'User profile not found' unless @showcase_user
  end

  def edit_details
  	@user = current_user
    redirect_to root_path, alert: 'You must be logged in to edit profile' unless @user
  end

  def update_details
    @user = current_user
    @user.update_attributes(user_params)
    redirect_to edit_path, notice: 'Updates saved'
  end

  def admin
    @user = current_user
    redirect_to root_path, alert: 'You must have admin privilages to view admin' unless (@user && @user.admin)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :cohort, :bio)
  end
end