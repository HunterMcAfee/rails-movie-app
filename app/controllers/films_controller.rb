class FilmsController < ApplicationController
    def index
        @films = Film.all
    end

    # def show
    #     @film = Film.find(params[:id])
    # end

    def new
        @film = Film.new
    end

    def create
        @film = Film.create!(film_params)
    end

    # def edit
    #     @film = Film.find(params[:id])
    # end

    private
    def film_params
       params.require(:film).permit(:title, :genere, :year, :synopsis, :picture) 
    end
end
