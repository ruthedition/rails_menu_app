class MenusController < ApplicationController

  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Menu.all
  end
  
  def show 
  end 

  def edit
  end
  
  def update
    @dish.update(menu_params)
    redirect_to @dish
  end 

  def new
    @dish = Menu.new
  end

  def create
    @dish = Menu.create(menu_params)
  end

  def destroy
    @dish.destroy
    redirect_to menus_path
  end

  private 

  def menu_params
    params.require(:menu).permit(:name, :description, :price)
  end

  def set_menu
    @dish = Menu.find(params[:id])
  end
end
