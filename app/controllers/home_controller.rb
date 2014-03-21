class HomeController < ApplicationController
  def index
  	@user = User.find_by('verified_maker')
  end

end
