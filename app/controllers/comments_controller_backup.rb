class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.date = (Time.now)
        redirect_to post_path(@post)
    end
    private
        def comment_params
            params.require(:comment).permit(:game_username, :body)
        end
end
