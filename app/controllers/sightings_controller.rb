class SightingsController < ApplicationController
  def index
    render json: Sighting.all
  end
  def show
    render json: Sighting.find(params[:id])
  end
  def create
    @sighting = Sighting.create!(sighting_params)
    if @sighting.save
      render json: @sighting, status: :created
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end
  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      render json: @sighting
    else
      render json: @sighting.errors, status: :unprocessable_entity
    end
  end
  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    head :no_content
  end

  private
  def sighting_params
    params.require(:sighting).permit(
      :observation_time, :location, :observer, :pokemon_id
    )
  end
end
