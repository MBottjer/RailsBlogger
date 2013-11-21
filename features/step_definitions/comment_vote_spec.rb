Given(/^a comment exists$/) do
  fill_in "Commenter", :with => "Michael Bottjer"
  fill_in "Body", :with => "This is a comment on my blog"
  click_button("Create Comment")
end

When(/^I press the comment button "(.*?)"$/) do |arg1|
  expect(page).to have_css '.comment_vote-count', text: '1'
end

