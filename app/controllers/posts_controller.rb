class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
end

private
    def post_params
        params.require(:post).permit(:title, :title_of_the_game, :game_username, :text)
    end