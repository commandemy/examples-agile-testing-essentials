require 'rack'
require 'rack/server'

class HelloWorld
  def self.call(env)
    [200, {}, ['Hello World']]
  end
end

Rack::Handler::WEBrick.run(HelloWorld, :Port => ENV["SERVER_PORT"])