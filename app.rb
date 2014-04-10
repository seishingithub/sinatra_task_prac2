require 'sinatra/base'

class App < Sinatra::Application
  get '/' do
    "Welcome"
  end
end