class ProgressTrackersController < ApplicationController
  before_action :valid_token, only: [:show]
  
  def new
  end
  
  def create
    current_user.create_progress_digest
    current_user.send_progress_tracker_email(:email)
    flash[:success] = "Email sent with instructions to track progress"
    redirect_to progress_url(current_user)
  end

  def show
  end
  
  def valid_token
    @user = User.find(params[:user])
   unless (@user && @user.authenticated?(params[:id]))
      redirect_to root_url
    end
  end
end
