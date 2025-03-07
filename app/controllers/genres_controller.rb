class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :update, :edit]

     def index
        @genres = Genre.all
    end

     def new
        @genre = Genre.new
    end

     def show

     end

     def create
        genre = Genre.create(genre_params)
        redirect_to genre
    end

     def edit

     end

     def update
        @genre.update(genre_params)
        redirect_to @genre
    end

     private

     def find_genre
        @genre = Genre.find(params[:id])
    end

     def genre_params
        params.require(:genre).permit(:name)
    end
end