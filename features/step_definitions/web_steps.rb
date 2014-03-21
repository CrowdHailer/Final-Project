Given(/^I visit the "([^\"]+)" page$/) do |path_name|
  case path_name
  when 'home'
    visit root_path
  when 'user edit'
    visit '/edit'
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

Then(/^I should see user bio$/) do
  puts "**" * 80
  puts "**" * 80
  expect(page).to have_content('The life and times of a developer')
end
