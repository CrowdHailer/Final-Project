When(/^I click "(.*?)"$/) do |button|
  click_link button
end

Given(/^There is a confirmed maker$/) do
  # raise "Hello"
  user1 = User.create!(name: 'TestName1', github_username: 'Test1', uid: '123', provider: 'github', profile_image: 'test.jpg', bio: 'The life and times of a developer')
  user1.confirm_maker
end

Given(/^There is an uncofirmed maker$/) do
  user2 = User.create(name: 'TestName2', github_username: 'Test2', uid: '1234', provider: 'github')
end
