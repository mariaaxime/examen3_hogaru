class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :show]
  
  def index
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def show
  end
  
  def destroy
  end
  
  private
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end
  
end
