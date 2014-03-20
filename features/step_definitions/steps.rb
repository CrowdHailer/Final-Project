
Given(/^I visit the "([^\"]+)" page$/) do |path_name|

  # user1 = User.create(name: 'TestName1', github_username: 'Test1', uid: '123', provider: 'github', profile_image: 'test.jpg')
  # user1.confirm_maker
  # raise User.last.inspect


  case path_name
  when 'home'
    visit root_path
  else
    puts 'Path not found'
  end
end

Then(/^I should see "(.*?)"$/) do |text_snippet|
  expect(page).to have_content(text_snippet)
end

Given(/^I sign in$/) do
 visit "/auth/github"
end

When(/^I sign out$/) do
  click_link "Sign out"
end

Then(/^I should see users github profile image$/) do
  expect(page).to have_css('img')
end

Then(/^I should see user name$/) do
  expect(page).to have_content('TestName1')
end