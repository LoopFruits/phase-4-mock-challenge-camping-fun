class ActivitiesController < ApplicationController
  

  def index
    activities = Activity.all
    render json: activities
  end

  def destroy
    activity = find_activity
      #anytime we destroy an activity we destory anything associated with it in our model (dependent: :destroy)  
    activity.destroy
    head :no_content 
  rescue ActiveRecord::RecordNotFound
    render json: {error: "Activity not found" }, status: :not_found

  end




  private 

  def find_activity
    Activity.find(params[:id])
  end

end
