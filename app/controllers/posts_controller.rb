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
        @post.poster_name = current_user.name
        @post.poster_id = current_user.id
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path
    end
end

private
    def post_params
        params.require(:post).permit(:title, :title_of_the_game, :game_username, :poster_name, :poster_id, :text)
    end