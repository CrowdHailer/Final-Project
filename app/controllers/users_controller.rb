class UsersController < ApplicationController

  def show_all
    @users = (current_user && current_user.admin?) ? User.all : User.verified_makers
    @users.shuffle!
  end

  def show_details
  	@showcase_user = User.find_by_github_username(params['github_username'])
    ap @showcase_user
    @user = current_user
    if @showcase_user
      gon.github_username = @showcase_user.github_username
      begin
      gon.stackoverflow_id = @showcase_user.stackoverflow.match(/\d+/)[0]
      rescue Exception => e
        
      end
    end 
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

  def confirm
    @user_to_be_confirmed = User.find_by_github_username(params[:username])
    @user_to_be_confirmed.confirm_maker if current_user && current_user.admin?
    redirect_to '/users', notice: "#{@user_to_be_confirmed.github_username} is now a verified maker!"
  end

  def set_available
    if current_user.seeking_work?
      current_user.set_as_unavailable
    else
      current_user.set_as_available
    end
    redirect_to '/edit', notice: 'You have successfully updated your work availability status!'
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_image, :cohort, :bio, :twitter, :linkedin, :stackoverflow, :website, :blog)
  end
end