require_relative 'main.rb'

require 'test/unit'
require 'rack/test'

ENV['ENV_ENV'] = 'test'

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

class NotFound < Test::Unit::TestCase

  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def test_it_is_a_404
    get '/asdfasdfasd12312'
    assert_equal 404, last_response.status
  end
  
  def test_custom_404
    get '/asdfasdfasd12312'
    assert_equal "can't find it. sorry", last_response.body
  end
  
end
