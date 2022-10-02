class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all.order(:created_at)
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def new
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to @tweet, notice: "Se ha creado el tweet correctamente"
        else
            render :new
        end
    end    
    private
    def tweet_params
        params.require(:tweet).permit(:monster_id, :content) //PROBLEMA ACÁ!!
    end
end
