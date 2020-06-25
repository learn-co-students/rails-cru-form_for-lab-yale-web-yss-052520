class ArtistsController < ApplicationController
    before_action :current_artist, only: [:show, :edit, :update]
    def index
        @artists = Artist.all 
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def edit
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def update
        @artist = Artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    private

    def current_artist
        @artist = Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

end