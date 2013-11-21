When(/^I press the "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see (\d+)$/) do |arg1|
  expect(page).to have_css '.votes-count', text: '1'
end

