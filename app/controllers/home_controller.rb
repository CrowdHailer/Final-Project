class HomeController < ApplicationController
  def index
  	@user = User.verified_makers.sample
  end

end
