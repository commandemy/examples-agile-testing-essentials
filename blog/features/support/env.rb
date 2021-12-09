require 'httparty'
require 'database_cleaner/active_record'
require './app'

SERVER_URL = "http://localhost:#{ENV['SERVER_PORT']}"

DatabaseCleaner.strategy = :truncation

AfterAll do
  DatabaseCleaner.clean
end
