class TweetsController < ApplicationController

  def index
    
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:quote, :book_id, :comment)
    # .merge(user_id: params[:user_id])
  end

end
