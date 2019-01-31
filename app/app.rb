
require 'sinatra/base'
require_relative 'lib/translate'

class Elvish < Sinatra::Base

  enable :sessions

  set :public_folder, 'public'

  get '/' do
    if session[:text]
      @handwritten = Translate.process_handwritten(session[:text])
      @elvish = Translate.process_elvish(session[:text])
    end
    erb :index
  end

  post '/translate' do
    session[:text] = params['translate']
    redirect '/'
  end




  run! if app_file == $0

end