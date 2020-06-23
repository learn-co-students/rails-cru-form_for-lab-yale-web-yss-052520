class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
	  #renders songs/show view
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
		#renders songs/new view
  end

  def create
	  #doesn't render anything
    song = Song.create(song_params)
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end


  private

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end