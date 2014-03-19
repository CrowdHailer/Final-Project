
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