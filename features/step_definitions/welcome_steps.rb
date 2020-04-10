Given(/^I am on the home page$/) do
    visit "/"
end

Then(/^I should see "(.*?)"$/) do |img|
    page.has_content?(img)
end