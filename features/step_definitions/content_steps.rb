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

# Then(/^I should see user bio$/) do
#   expect(page).to have_content('The life and times of a developer')
# end

Then(/^I should see the confirmed maker$/) do
  expect(page).to have_content('TestName1')
end

Then(/^I should not see the unconfirmed maker$/) do
  expect(page).not_to have_content('TestName2')
end

