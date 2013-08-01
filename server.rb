require 'sinatra'

set :environment, :production
set :public_folder, File.expand_path('public', File.dirname(__FILE__))
# Checks on static files before dispatching calls
enable :static

get "/" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, "/index.html"))
end

get "/blog/feed/atom.xml", :provides => ['atom'] do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, "/blog/feed/atom.xml"))
end

get "/*" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:splat][0] + "/index.html"))
end

get "/:page?/" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:page] + "/index.html"))
end