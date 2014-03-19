class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@user = User.first
  end

end
