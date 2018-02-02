class CaloriesRegistriesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :show, :destroy]
  
  def index
    @calories_registries = current_user.calories_registries.page(params[:page])
  end
  
  def new
    @calories_registry = CaloriesRegistry.new
  end
  
  def create
    @calories_registry = current_user.calories_registries.build(calories_registry_params)
    if @calories_registry.save
      flash[:success] = "Registry saved!"
      redirect_to calories_registries_url
    else
      render 'new'
    end
  end
  
  def edit
    @calories_registry = CaloriesRegistry.find(params[:id])
  end
  
  def update
    @calories_registry = CaloriesRegistry.find(params[:id])
    if @calories_registry.update_attributes(calories_registry_params)
      flash[:success] = "Registry updated"
      redirect_to @calories_registry
    else
      render 'edit'
    end
  end
  
  def show
    @calories_registry = CaloriesRegistry.find(params[:id])
  end
  
  def destroy
    CaloriesRegistry.find(params[:id]).destroy
    flash[:success] = "Registry deleted"
    redirect_to calories_registries_url
  end
  
  private
  
    def calories_registry_params
      params.require(:calories_registry).permit(:quantity, :day, :registry_type, :comment)
    end
  
    def correct_user
      @user = User.find(CaloriesRegistry.find(params[:id]).user_id)
      redirect_to(root_url) unless @user == current_user
    end
  
end
