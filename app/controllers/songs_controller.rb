require "pry"

class SongsController < ApplicationController
  
  get '/songs' do
    @songs = Song.all
    
    erb :"songs/index"
  end
  
  
  get '/songs/:slug' do
    
    @song = Song.find_by_slug(params[:slug])
    #binding.pry
    
    # user params[:slug] within the
    # find_by_slug function to show artist name
    
    erb :"/songs/show"
  end
  
end