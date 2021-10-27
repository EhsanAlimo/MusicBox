class PlaylistsController < ApplicationController
  before_action :check_for_login
  def new
    @playlist = Playlist.new
  end
  def show 
    @playlist = Playlist.find params[:id]
  end
  def search 
    @Playlists = Playlist.where("name LIKE ?", "%" + params[:q] + "%")
end
  def index
    @playlists = Playlist.all
  end
  def create 
    playlist = Playlist.create playlist_params
    @current_user.playlists << playlist
    redirect_to playlists_path
  end
  def edit
    @playlist = Playlist.find params[:id]
  end
  def update 
    playlist = Playlist.find params[:id] 
    playlist.update playlist_params
    redirect_to playlist_path
  end

  private 
  def playlist_params
    params.require(:playlist).permit(:name, :image, :user_id, :playlist_id, :song_ids => [])
  end
end
