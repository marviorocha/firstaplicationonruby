class ApplicationController < ActionController::Base
  private
  protect_from_forgery with: :exception

end
