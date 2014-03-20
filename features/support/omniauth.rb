OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:github, {
  :uid => '123456789',
  :info => {
    :name => 'Mr Test',
    :email => 'test@example.com',
    :nickname => "Billybob"
  },
  :extra => {
  :raw_info => {
    :avatar_url => 'test.jpg'
    }
  },
  :credentials => {
    :access_token => 'a'
    }
})