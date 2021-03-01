Given("I have a list of capital cities inside a file") do
  @file = File.open("list_of_capital_cities.txt")
end

When("I open the file") do
  @file_data = @file.read
end

Then("I should find {string} in the list") do |string|
  expect(@file_data).to include(string)
end

Then("I should not find {string} in the list") do |string|
  expect(@file_data).to_not include(string)
end