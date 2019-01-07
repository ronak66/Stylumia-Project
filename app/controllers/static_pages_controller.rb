class StaticPagesController < ApplicationController

    def home
        @posts = Post.all
    end

    def list
        @list = Post.where(user_id: current_user.id)
    end

end
