class ArtistsController < ApplicationController
    def show
        @artist = the_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def edit
        @artist = the_artist
    end

    def update
        @artist = the_artist
        @artist.update(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def the_artist
        Artist.find(params[:id])
    end
end
