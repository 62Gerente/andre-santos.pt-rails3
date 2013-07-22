class HomeController < ActionController::Base
  layout 'application'

  def index
  end

  def sub_layout
    "home_body"
  end
end
