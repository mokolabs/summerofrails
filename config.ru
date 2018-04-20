# Load dependencies
require 'sinatra'
require 'rack-rewrite'
require './app'

use Rack::Rewrite do
  r301 %r{.*}, 'http://summerofrails.org$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'summerofrails.org' and ENV['RACK_ENV'] == 'production'
  }
end

run Sinatra::Application
