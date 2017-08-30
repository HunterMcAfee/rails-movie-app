class FavoritesController < ApplicationController
    def index
        user = User.find(current_user.id)
        @favorites = user.films
    end
    
    def create
        film_id = params[:film_id]
        @favorite = Favorite.create!(user_id: current_user.id, film_id: film_id )
    end
end
