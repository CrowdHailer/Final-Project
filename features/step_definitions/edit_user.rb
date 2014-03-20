
When(/^I visit the user edit page$/) do
  visit "/edit"
end

Then(/^I should see my profile picture$/) do
  expect(page).to have_css('img')
end

Given(/^I have been confirmed as a Maker$/) do
  user = User.find_by_name('Mr Test')
  user.confirm_maker
end

Given(/^I should not see "(.*?)"$/) do |text_snippet|
  expect(page).not_to have_content(text_snippet)
end