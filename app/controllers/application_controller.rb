class ApplicationController < ActionController::Base
  def authenticate_receptionist
    redirect_to root_path, notice:"You are not authorized to perform this action!" unless current_user && current_user.receptionist?
  end
end
