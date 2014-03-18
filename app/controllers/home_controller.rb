class HomeController < ApplicationController
  def index
    @client_id = ENV['GITHUB_CLIENT_ID']
  end
end
