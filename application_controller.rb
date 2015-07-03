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
  get '/custom' do
    erb :custom
  end
  post '/custResults' do
    note = Note.new(params[:child_name], params[:writer_name], params[:reciever])
    note.pot_num1(params[:number_of_days])
    note.pot_time1(params[:period_of_time])
    note.symp1(params[:sickness])
    @output = note.show
    erb :custResults
  end
  

end
