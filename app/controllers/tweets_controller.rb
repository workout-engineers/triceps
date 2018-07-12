class TweetsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :correct_user, only: [:edit, :update, :destroy]

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

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end

  def show
  end

  private

    def tweet_params
      params.require(:tweet).permit(:quote, :book_id, :comment).merge(user_id: current_user.id)
    end

    def logged_in_user
      unless current_user
        flash[:danger] = "投稿するにはログインが必要です。"
        redirect_to new_user_registration_path
        #TODO 人気の投稿一覧画面ができたらリダイレクト先変更
      end
    end

    def correct_user
      tweet = Tweet.find(params[:id])
      unless tweet.user_id == current_user.id
        redirect_to user_path(current_user)
      end
    end

end
