When(/^I visit the user profile page$/) do
	visit '/user/fred'
  expect(page).to have_content('Profile')
end
