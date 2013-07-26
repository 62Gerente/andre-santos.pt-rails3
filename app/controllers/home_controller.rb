class HomeController < ActionController::Base
  layout 'application'

  def index
    @tweets = Tweet.all
  end

  def sub_layout
    "home_body"
  end
end
