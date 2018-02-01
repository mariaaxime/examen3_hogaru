class CaloriesRegistriesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :show, :destroy]
  
  def index
  end
  
  def new
    @calories_registry = CaloriesRegistry.new
  end
  
  def create
    @calories_registry = current_user.calories_registries.build(announcement_params)
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
  
    def calories_registry_params
      params.require(:calories_registry).permit(:quantity, :type, :comment)
    end
  
    def correct_user
      @user = User.find(CaloriesRegistry.find(params[:id]).user_id)
      redirect_to(root_url) unless @user == current_user
    end
  
end
