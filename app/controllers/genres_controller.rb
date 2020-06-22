class GenresController < ApplicationController
    def show
        @genre = the_genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = the_genre
    end

    def update
        @genre = the_genre
        @genre.update(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def the_genre
        Genre.find(params[:id])
    end
end
