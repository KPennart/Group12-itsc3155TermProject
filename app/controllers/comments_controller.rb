class CommentsController < ApplicationController
    def create
        @post = Post.find_by_id(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.commenter = current_user.name
        puts current_user.name
        redirect_to post_path(@post)
    end
    private
        def comment_params
            params.require(:comment).permit(:commenter, :game_username, :body)
        end
end