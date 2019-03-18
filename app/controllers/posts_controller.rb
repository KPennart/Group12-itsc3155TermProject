class PostsController < ApplicationController
    def new
    end
    def create
        Params[:post].inspect
    end
end
