class HomeController < ApplicationController
  def index
    @client_id = ENV['GITHUB_CLIENT_ID']
    @user = current_user
    # @showcase_user = User.random
  end

end
