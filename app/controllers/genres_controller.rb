class GenresController < ApplicationController
	before_action :current_genre, only: [:show, :edit, :update]
	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
	  @genre = Genre.new(genre_params)
	  @genre.save
	  redirect_to genre_path(@genre)
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

		def current_genre
			@genre = Genre.find(params[:id])
		end


		def genre_params
			params.require(:genre).permit(:name)
		end
end