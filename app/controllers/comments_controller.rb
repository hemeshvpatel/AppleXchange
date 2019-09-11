class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.listing_id = params[:listing_id]
      
        @comment.save
      
        redirect_to listing_path(@comment.listing)
      end

    private

    def comment_params
        params.require(:comment).permit(:listing_id, :user_id, :content)
    end
end
