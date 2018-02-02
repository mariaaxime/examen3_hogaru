class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :show, :resume]
  
  def index
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to goal_url
    else
      render 'goal'
    end
  end
  
  def show
  end
  
  def destroy
  end
  
  def resume
  end
  
  def goal
    @user = current_user
  end
  
  private
  
    def user_params
      params.require(:user).permit(:email, :password, :goal)
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
  
end
