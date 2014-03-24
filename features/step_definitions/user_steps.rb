Given(/^I sign in$/) do
 visit "/auth/github"
end

When(/^I sign out$/) do
  click_link "Sign out"
end

Given(/^I am confirmed$/) do # repetition here "there is a confirmed maker" step def -- to refactor
  User.first.confirm_maker
end

Given(/^I am granted admin privilages$/) do
  User.first.make_admin
end

Given(/^I have been confirmed as a Maker$/) do
  step "I sign in"
  step "I am confirmed"
end

Given(/^there is a confirmed maker seeking work$/) do
  user1 = User.create(name: 'TestName1', github_username: 'Test1', uid: '123', provider: 'github', profile_image: 'test.jpg', bio: 'The life and times of a developer')
  user1.confirm_maker
  user1.set_as_available
end

Given(/^there is a confirmed maker not seeking work$/) do
  user3 = User.create(name: 'TestName3', github_username: 'Test3', uid: '12345', provider: 'github', profile_image: 'test.jpg', bio: 'The life and times of a developer')
  user3.confirm_maker
  user3.set_as_unavailable
end

Given(/^There is an uncofirmed maker$/) do
  user2 = User.create(name: 'TestName2', github_username: 'Test2', uid: '1234', provider: 'github')
end

Given(/^I have added the following:$/) do |details|
  items = details.rows_hash
  User.first.update_attributes(items)
end

Given(/^I am seeking work$/) do
  User.first.set_as_available
end
