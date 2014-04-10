require 'sinatra/base'

class App < Sinatra::Application
  TASKS = []
  get '/' do
    erb :index, locals: {tasks: TASKS}
  end

  get '/new' do
    erb :new_task
  end

  post '/' do
    task = params[:task]
    TASKS << task
    redirect '/'
  end
end