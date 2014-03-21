Given(/^there is a showcased user$/) do
  @showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'roy', uid: '2', provider: 'google')
end
