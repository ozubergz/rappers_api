class ArtistsController < ApplicationController

    def index
        artists = Artist.all
        render json: artists
    end

    def show
        artist = Artist.find_by(id: params[:id])
        if artist
            render json: artist
        else
            render json: {message: "No artist was found with that id."}
        end
    end
    
end
