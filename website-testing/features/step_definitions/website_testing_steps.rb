Given("that I am on Commandemy Home") do
  visit 'http://www.commandemy.com'
end

When("I click on link {string}") do |link_name|
  click_link(link_name)
end

Then("the page should contain {string}") do |content|
  expect(page).to have_content(content.upcase)
end
