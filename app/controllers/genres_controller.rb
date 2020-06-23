class GenresController < ApplicationController

    before_action :find_genre, only: [:show, :edit, :update]

    def index
        @genres = Genre.all 
    end
    
    def show

    end

    def new
        @genre = Genre.new 
    end

    def create
        @genre = Genre.create(strong_params)
        redirect_to genre_path(@genre)
    end

    def edit
    end

    def update
        @genre.update(strong_params)
        redirect_to genre_path(@genre)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end

    private

    def strong_params
        params.require(:genre).permit(:name)
    end


end
