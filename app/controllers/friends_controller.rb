class FriendsController < ApplicationController
    def index
        @friend = Friend.all
    end

    def new
        # binding.pry
        @friend = Friend.new()
    end

    def create
        @friend = Friend.new(post_params)
        @friend.save 
        redirect_to friends_path
    end

    def show
        @friend = Friend.find(params[:id])

    end

    def edit
        @friend = Friend.find(params[:id])
    end
    
    def update
        @friend = Friend.find(params[:id])
        @friend.update(post_params)
        redirect_to friends_path
    end

    private 
    def post_params
        params.require(:friend).permit(:first_name, :last_name, :phone, :email, :twitter)
      end

end
