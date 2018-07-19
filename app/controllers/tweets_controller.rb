class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[edit update destroy]
  before_action :false_user_redirect, only: %i[edit update destroy]

  def index; end

  def new
    return auth_user unless current_user
    @tweet = Tweet.new
  end

  def create
    return auth_user unless current_user
    Tweet.create(tweet_params)
    # TODO: トップページが出来次第、renderを実装
  end

  def edit; end

  def update
    @tweet.update(tweet_params)
  end

  def destroy
    @tweet.destroy
  end

  def show; end

  private

  def tweet_params
    params.require(:tweet).permit(:quote, :book_id, :comment).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
    @tweet.current_user = current_user
  end

  def false_user_redirect
    redirect_to user_path(current_user) unless @tweet.correct_user
  end
end
