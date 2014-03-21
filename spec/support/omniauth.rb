  OmniAuth.config.test_mode = true
  OmniAuth.config.add_mock(:github, {
      :uid  => '123456789',
      :info => {
                :nickname => 'githubME',
                :name  => 'Mr Test',
                :email => 'test@test.com'
              },
      :extra => {
      :raw_info => {
        :avatar_url => 'smile.jpg'
        }
      },
      :credentials => {
                      :access_token => 'a'
                      }
    })

