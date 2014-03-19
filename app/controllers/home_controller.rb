class HomeController < ApplicationController
  def index
    @user = current_user
    # @showcase_user = User.random
  end

end
