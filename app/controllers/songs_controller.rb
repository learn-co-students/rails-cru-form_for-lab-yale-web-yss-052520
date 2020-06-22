class SongsController < ApplicationController
    
    def index
        @songs = Song.all
    end
    
    def show
        @song = the_song
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def edit
        @song = the_song
    end

    def update
        @song = the_song
        @song.update(song_params)
        @song.save
        redirect_to song_path(@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end

    def the_song
        Song.find(params[:id])
    end
end
