Then(/^I should see "(.*?)"$/) do |text_snippet|
  expect(page).to have_content(text_snippet)
end

Given(/^I should not see "(.*?)"$/) do |text_snippet|
  expect(page).not_to have_content(text_snippet)
end

Then(/^I should see users github profile image$/) do
  expect(page).to have_css('img')
end

Then(/^I should see user name$/) do
  expect(page).to have_content('TestName1')
end

Then(/^I should see user bio$/) do
  expect(page).to have_content('The life and times of a developer')
end

Then(/^I should see the confirmed maker$/) do
  expect(page).to have_content('TestName1')
end

Then(/^I should not see the unconfirmed maker$/) do
  expect(page).not_to have_content('TestName2')
end

Then(/^I should see my profile picture$/) do
  expect(page).to have_css('img')
end
