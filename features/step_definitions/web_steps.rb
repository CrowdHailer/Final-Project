Given(/^I visit the "([^\"]+)" page$/) do |path_name|
  case path_name
  when 'home'
    visit root_path
  when 'user edit'
    visit '/edit'
  when 'bogus user'
    visit '/user/bogus_jeff'
  else
    puts 'Path not found'
  end
end

When(/^I visit the user profile page$/) do
  visit "/user/#{User.first.github_username}"
  expect(page).to have_content('Profile')
end
