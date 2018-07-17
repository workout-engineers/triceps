class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[update destroy]

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

  def edit
    if correct_user
    end
  end

  def update
    @tweet.update(tweet_params) if correct_user
  end

  def destroy
    @tweet.destroy if correct_user
  end

  def show; end

  private

  def tweet_params
    params.require(:tweet).permit(:quote, :book_id, :comment).merge(user_id: current_user.id)
  end

  def auth_user
    unless current_user
      flash[:danger] = '投稿するにはログインが必要です。'
      redirect_to new_user_registration_path
      # TODO: 人気の投稿一覧画面ができたらリダイレクト先変更
    end
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
