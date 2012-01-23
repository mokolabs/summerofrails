require './server'
require 'rack-rewrite'

use Rack::Rewrite do
  r301 %r{.*}, 'http://summerofrails.org$&', :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != 'summerofrails.org'
  }
end

run Sinatra::Application
