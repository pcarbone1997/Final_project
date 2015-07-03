require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/random' do
    erb :random
  end
  post '/results' do
    note = Note.new(params[:child_name], params[:writer_name], params[:reciever])
    @output = note.show
    erb :results
  end
  

end
