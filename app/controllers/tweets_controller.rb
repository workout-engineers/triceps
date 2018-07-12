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
  end

  def update
  end

  def show
  end

  private

  def tweet_params
    params.require(:tweet).permit(:quote, :book_id, :comment).merge(user_id: current_user.id)
    # TODO: ユーザー登録の機能が出来次第、コメントアウト解除
  end

end
