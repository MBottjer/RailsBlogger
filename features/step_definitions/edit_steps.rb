Given(/^that I am on the posts page$/) do
  visit '/posts'
end

Given(/^a post exists$/) do
  visit '/posts/new'
  fill_in "Title", :with => "hello"
  fill_in "Text", :with => "hi there"
  click_button("Create Post")
end

Given(/^I follow "(.*?)"$/) do |arg1|
  click_link(arg1)
end

When(/^I click "(.*?)"$/) do |arg1|
  click_button(arg1)
end