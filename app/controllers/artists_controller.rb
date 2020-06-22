class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    
    def show
        get_artist
    end
    
    def new
        @artist = Artist.new
    end
    
    def edit
        get_artist
    end
    
    def create
        @artist = Artist.new
        @artist.assign_attributes(artist_params)
        @artist.save
        redirect_to artist_path(@artist)
    end
    
    def update
        artist = get_artist
        artist.update(artist_params)
        redirect_to artist_path(artist)
    end
    
    private
    
    def get_artist
        @artist = Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name)
    end
end
