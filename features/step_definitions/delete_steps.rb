Given(/^I am on the posts page$/) do
  visit '/posts'
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  expect(page).to_not have_content(arg1)
end