configure :development do
 set :database, {adapter: 'sqlite3', database: 'blog_dev.sqlite3'}
 set :show_exceptions, true
end
