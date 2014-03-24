Then(/^I should see "(.*?)"$/) do |text_snippet|
  expect(page).to have_content(text_snippet)
end

Given(/^I should not see "(.*?)"$/) do |text_snippet|
  expect(page).not_to have_content(text_snippet)
end

Then(/^I should see "(.*)" image$/) do |image_title|
  expect(page).to have_css('img')
end

Then(/^I should see the following:$/) do |contents|
  items = contents.raw.flatten
  items.each do |item|
    expect(page).to have_content(item)
  end
end

Then(/^I should see the confirmed maker$/) do
  expect(page).to have_content('TestName1')
end

Then(/^I should not see the unconfirmed maker$/) do
  expect(page).not_to have_content('TestName2')
end

Then(/^I should see "(.*?)" for the user$/) do |biotext|
  expect(page).to have_content(biotext)
end

Then(/^I should see "(.*?)" button$/) do |button|
  expect(page).to have_content(button)
end

Given(/^I click button "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see makers seeking work$/) do
  expect(page).to have_selector('.available',   visible: true)
  expect(page).to have_selector('.unavailable', visible: false)
end
