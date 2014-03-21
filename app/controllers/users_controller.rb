class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.find_by_github_username(params['github_username'])
    @user = current_user
    flash.alert = "User profile not found " unless @user
    redirect_to root_path unless @showcase_user
  end

  def edit_details
  	@user = current_user
    @saved = params[:saved]
    flash.alert = "You must be logged in to edit profile" unless @user
    redirect_to root_path unless @user
  end

  def update_details
    @user = current_user
    @user.update_attributes(user_params)
    saved = @user.save
    redirect_to "/edit?#{'saved=true' if saved }"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :cohort, :bio)
  end
end