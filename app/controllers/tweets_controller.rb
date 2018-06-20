class TweetsController < ApplicationController

  def index
    
  end

  def new
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
    params.permit()
  end

end
