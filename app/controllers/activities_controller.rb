class ActivitiesController < ApplicationController
  def index
    activities = Activity.all
    render json: activities
  end

  def destroy

  end
end
