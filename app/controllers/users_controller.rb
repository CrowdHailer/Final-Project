class UsersController < ApplicationController

  def show_all
  	@users = User.verified_makers
  end

  def show_details
  	@showcase_user = User.first
  end

end
