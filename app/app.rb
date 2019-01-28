
require 'sinatra/base'

class Elvish < Sinatra::Base

  set :public_folder, 'public'

  get '/' do
    erb :index
  end


  run! if app_file == $0

end