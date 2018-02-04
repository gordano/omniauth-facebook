require 'bundler/setup'
require 'omniauth-zalo'
require './app.rb'

use Rack::Session::Cookie, secret: 'abc123'

use OmniAuth::Builder do
  provider :zalo, ENV['APP_ID'], ENV['APP_SECRET']
end

run Sinatra::Application
