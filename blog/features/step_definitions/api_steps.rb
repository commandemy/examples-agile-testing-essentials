require 'httparty'
SERVER_URL = "http://localhost:#{ENV['SERVER_PORT']}"

Given("I have a healthy API") do
  response = HTTParty.get("#{SERVER_URL}/api/health")
  expect(response.code).to eq 200
  expect(response.body).to include 'Ok'
end

When('I create an article with the title {string}') do |title|
  @response = HTTParty.post(
    "#{SERVER_URL}/api/articles", body: { title: title, content: "My article text"}
  )
end

Then('I should receive a success response') do
  expect(@response.code).to eq 200
end

Then('I should receive {string} in the response body') do |title|
  expect(@response.body).to include title
end

When('I list all available articles') do
  @response = HTTParty.get("#{SERVER_URL}/api/articles")
end
