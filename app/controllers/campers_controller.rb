class CampersController < ApplicationController
    
  def index
    camper = Camper.all
    render json: camper
  end

  def show
    camper = Camper.find_by(id: params[:id])
    if
      render json: camper, include: [:activities]
    else 
      render json: {error: "Camper not found"}, status: :not_found
    end
  end
end
