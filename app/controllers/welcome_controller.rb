class WelcomeController < ApplicationController
  def index
  	@subscription = Subscription.new
  	@user = User.all
  end
end
