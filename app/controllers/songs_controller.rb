class SongsController < ApplicationController
    before_action :check_for_login
    def index
        @songs = Song.all
    end
    def new 
        @song = Song.new
    end
    def search 
        @songs = Song.where("name LIKE ?", "%" + params[:q] + "%")
    end
    def show
        @song = Song.find params[:id]
    end
    def create
        song = Song.create song_params
        redirect_to songs_path
    end
    def edit 
        @song = Song.find params[:id]
    end
    def update 
        song = Song.find params[:id] 
        song.update song_params
        redirect_to songs_path
    end
    def destroy 
        song = Song.find params[:id] 
        song.destroy 
        redirect_to songs_path
    end

    private 
    def song_params
        params.require(:song).permit(:name, :genre,  :artist, :track, :playlist_ids)
    end

end
