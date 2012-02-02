require_relative 'main.rb'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class IndexTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'hello, world', last_response.body
  end
end

class NotFoundTest < Test::Unit::TestCase

  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_it_is_a_404
    get '/asdfasdfasd4232423'
    assert_equal 404, last_response.status
    assert_equal "can't find it. sorry", last_response.body
    
  end
end

