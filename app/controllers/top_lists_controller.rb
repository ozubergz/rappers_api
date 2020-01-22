class TopListsController < ApplicationController

    def create
        top_list = TopList.create(top_list_params)
        if top_list.valid?
            render json: top_list, status: 201
        else
            render json: {errors: top_list.errors.full_messages}, status: 500
        end
    end

    def destroy
        top_list = TopList.find_by(id: params[:id])
        top_list.destroy
        render json: top_list
    end

    private

    def top_list_params
        params.require(:top_list).permit(:user_id, :artist_id)
    end

end
