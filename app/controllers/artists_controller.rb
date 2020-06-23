class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :edit, :update]

    def index
        @artists = Artist.all 
    end
    
    def show

    end

    def new
        @artist = Artist.new 
    end

    def create
        @artist = Artist.create(strong_params)
        redirect_to artist_path(@artist)
    end

    def edit 
    end

    def update
        @artist.update(strong_params)
        redirect_to artist_path(@artist)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end

    private

    def strong_params
        params.require(:artist).permit(:name, :bio)
    end

end
