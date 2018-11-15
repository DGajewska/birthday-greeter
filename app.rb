require 'sinatra/base'


class BirthdayGreeter < Sinatra::Base
  run! if app_file == $0

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
    @name = params[:name]
    redirect '/'
  end
end
