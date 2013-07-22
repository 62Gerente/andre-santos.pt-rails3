class ErrorsController < ApplicationController
  layout 'application'

  def error_404
    @not_found_path = params[:not_found]
  end

  def error_500
  end

  def sub_layout
    "error_body"
  end
end