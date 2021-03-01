Given('I am on {string}') do |page_name|
  visit(path_to(page_name))
end

When('I follow {string}') do |link|
  click_link(link)
end

Then('I should be on {string}') do |page_name|
  current_path = URI.parse(current_url).path
  expect(current_path).to eq path_to(page_name)
end

Then('I should see {string}') do |text|
  expect(page).to have_content(text)
end
