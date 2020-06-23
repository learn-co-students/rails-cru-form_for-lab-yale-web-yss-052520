class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def new
        @song = Song.new
    end

    def create
        song = Song.create(form_params)

        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        song = Song.find(params[:id])
        song.update(form_params)

        redirect_to song_path(song)
    end

    def form_params
        params.require(:song).permit(:name, :genre_id, :artist_id)
    end
end
