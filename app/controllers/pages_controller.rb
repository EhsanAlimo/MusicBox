class PagesController < ApplicationController
  def home
    
  end
  def form
  end
  def results
    require 'rspotify'
    @song = params[:song]
    artists = RSpotify::Track.search @song
    @artist = artists.first
    
  end
  
end
