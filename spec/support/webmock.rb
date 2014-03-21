require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

def load_fixture(name)
  File.new(File.dirname(__FILE__) + "/../fixtures/requests/#{name}.txt")
end

def github_user_profile
  load_fixture(__method__)
end