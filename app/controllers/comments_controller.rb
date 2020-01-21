class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params);
        if comment.valid? 
            render json: comment, status: 201
        else
            render json: {errors: comment.errors.full_messages}, status: 500
        end
    end

    private
    
    def comment_params
        params.require(:comment).permit(:content, :user_id, :artist_id)
    end
end
