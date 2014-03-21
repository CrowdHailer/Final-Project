class HomeController < ApplicationController
  def index
  	u = User.find_by('verified_maker')
  	puts u
    # @user = u.first(:order => "RANDOM()")
    # @user = User.first
    @user = u
  end

end
