require 'sinatra'
require 'sinatra/json'
require 'haml'
require 'json'

configure do 
  set :views, 'app/views'
  set :public_folder, 'public'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

get '/' do
  haml :main
end

get '/main.json' do
  json({
    line_01: "➜ johnkeith git:(master)" 
  })
end
