class CampersController < ApplicationController
    
  def index
    campers = Camper.all 
    render json: campers 
  end

  def show
    camper = Camper.find(id: params[:id])
    render json: camper, include: [:activities]
  end

  def create

  end

end
