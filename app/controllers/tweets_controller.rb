class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all.order(created_at: :desc)
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to @tweet, notice: "Se ha creado el tweet correctamente"
        else
            render :new
        end
    end    
    private

    def tweet_params
        params.permit(:monster_id, :content) #Preguntar el por que funciona con require
    end
end
