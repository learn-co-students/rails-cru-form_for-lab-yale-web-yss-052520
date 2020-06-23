class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
	  #renders artists/show view
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
		#renders artists/new view
  end

  def create
	  #doesn't render anything
    artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end


  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end