class TweetsController < ApplicationController

def new
	@tweet = Tweet.new
	respond_with(@tweet)
end

def create
	@tweet = Tweet.new(tweet_params)
	@tweet.user_id = current_user.id
	@tweet.save
	respond_with(@tweet)
end

end