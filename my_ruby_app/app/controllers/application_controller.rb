class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  allow_browser versions: :modern
end
