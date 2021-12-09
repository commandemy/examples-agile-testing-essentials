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

When('I request the latest article') do
  @response = HTTParty.get("#{SERVER_URL}/api/articles/#{Article.last.id}")
end

When('I update the latest article with the new title {string}') do |new_title|
  @response = HTTParty.put(
    "#{SERVER_URL}/api/articles/#{Article.last.id}", body: { new_title: new_title }
  )
end

When('I delete the latest article') do
  @article_id = Article.last.id
  @response = HTTParty.delete("#{SERVER_URL}/api/articles/#{@article_id}")
end

Then('the article should not be in the database anymore') do
  response = HTTParty.get("#{SERVER_URL}/api/articles/#{@article_id}")
  expect(response.code).to eq 500
end
