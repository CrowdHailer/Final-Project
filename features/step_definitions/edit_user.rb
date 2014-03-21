Then(/^I should see my profile picture$/) do
  expect(page).to have_css('img')
end

Given(/^I have been confirmed as a Maker$/) do
  user = User.find_by_name('Mr Test')
  user.confirm_maker
end

Then(/^I fill in the following for the "([^\"]+)"$/) do |object, table|
  # table is a Cucumber::Ast::Table
  table.rows_hash.each do |name, value|
  	fill_in "#{object}_#{name}", with: value
  end
end

Then(/^I press "(.*?)"$/) do |button|
	click_button button
end