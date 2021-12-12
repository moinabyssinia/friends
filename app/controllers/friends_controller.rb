class FriendsController < ApplicationController
    def index
        
    end

    def new
        # binding.pry
        @friend = Friend.new()
    end

    def create
        @friend = Friend.new(post_params)
        binding.pry
    end

    private 
    def post_params
        params.require(:friend).permit(:first_name, :last_name, :phone, :email, :twitter)
      end

end
