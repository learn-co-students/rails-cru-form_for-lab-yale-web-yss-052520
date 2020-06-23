class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
	  #renders genres/show view
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
		#renders genres/new view
  end

  def create
	  #doesn't render anything
    genre = Genre.create(genre_params)
    redirect_to genre_path(genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end


  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end