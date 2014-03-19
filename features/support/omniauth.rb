OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:github, {
  :uid => '123456789',
  :info => {
    :name => 'Mr Test',
    :email => 'test@example.com',
    :github_username => "Billybob"
  },
  :credentials => {
    :access_token => 'a'
    }
})