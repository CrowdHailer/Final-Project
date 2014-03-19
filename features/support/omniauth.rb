OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:github, {
  :uid => '123456789',
  :info => {
    :name => 'Mr Test',
    :email => 'test@example.com',
    :nickname => "Billybob"
  },
  :raw_info => {
    :avatar_url => 'a.test'
    },
  :credentials => {
    :access_token => 'a'
    }
})