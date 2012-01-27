require 'rubygems'
require 'sinatra'

get '/' do
  "hello, world"
end

not_found do
  "can't find it. sorry"
end

