Given(/^I sign in$/) do
 visit "/auth/github"
end

When(/^I sign out$/) do
  click_link "Sign out"
end

Given(/^I have been confirmed as a Maker$/) do
  user = User.find_by_name('Mr Test')
  user.confirm_maker
end

Given(/^There is a confirmed maker$/) do
  # raise "Hello"
  user1 = User.create!(name: 'TestName1', github_username: 'Test1', uid: '123', provider: 'github', profile_image: 'test.jpg', bio: 'The life and times of a developer')
  user1.confirm_maker
end

Given(/^There is an uncofirmed maker$/) do
  user2 = User.create(name: 'TestName2', github_username: 'Test2', uid: '1234', provider: 'github')
end


# TODO Don't use this one. Needs fixing
Given(/^there is a showcased user$/) do
  @showcase_user = User.create!(name: 'Pussy Galore', email: 'test@test.com', github_username: 'roy', uid: '2', provider: 'google')
end