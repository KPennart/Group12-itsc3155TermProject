class CommentsController < ApplicationController
    def create
        @post = Post.find_by_id(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.commenter = current_user.name
        @comment.date = Time.now
        redirect_to post_path(@post)
    end
    
    def destroy
        @comment = Post.find_by_id(params[:post_id])
        @comment.destroy
        
        redirect_to posts_path
    end
    
    private
        def comment_params
            params.require(:comment).permit(:commenter, :game_username, :body)
        end
end