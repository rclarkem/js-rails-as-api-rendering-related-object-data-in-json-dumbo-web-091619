class SightingsController < ApplicationController

  def index
      @sightings = Sighting.all
      render json: @sightings
  end

  def show
    @sighting = Sighting.find_by(id: params[:id])
    render json:  @sighting, include: [:bird, :location]
    render json:  @sighting, include: [:bird, :location]
  end
end
