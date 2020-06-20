class ArtistsController < ApplicationController

  def show
    @artist = find_artist()
  end

  def new
    @artist = Artist.new()
  end

  def create
    @artist = Artist.create(artist_params(:name, :bio))
    @artist.save 
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = find_artist()
  end

  def update
    @artist = find_artist()
    @artist.update(artist_params(:name, :bio))
    redirect_to artist_path(@artist)
  end

  private

  def find_artist()
    Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
