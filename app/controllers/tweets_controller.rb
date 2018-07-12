class TweetsController < ApplicationController

  def index

  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    # TODO: トップページが出来次第、renderを実装
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
  end

  private

  def tweet_params
    params.require(:tweet).permit(:quote, :book_id, :comment).merge(user_id: current_user.id)
  end

end
