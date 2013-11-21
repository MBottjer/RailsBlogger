Given(/^I am on the new post page$/) do
  visit '/posts/new'
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end


Then(/^I should see "(.*?)"$/) do |arg1|
  has_content?(arg1)
end



