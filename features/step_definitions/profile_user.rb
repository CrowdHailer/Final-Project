Given(/^there is a showcased user$/) do
  @showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'roy', uid: '2', provider: 'google', profile_image: 'https://avatars1.githubusercontent.com/u/6339191?s=460')
  puts @showcase_user
end

When(/^I visit the user profile page$/) do
	visit "/user/#{@showcase_user.github_username}"
  expect(page).to have_content('Profile')
end
