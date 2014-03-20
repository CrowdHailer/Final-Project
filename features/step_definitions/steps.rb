
Given(/^I visit the "([^\"]+)" page$/) do |path_name|

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
  expect(page).to have_content('https://avatars1.githubusercontent.com/u/6339191?s=460')
end