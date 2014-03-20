
When(/^I visit the user edit page$/) do
  visit "/edit"
end

Then(/^I should see my profile picture$/) do
  expect(page).to have_css('img')
end
