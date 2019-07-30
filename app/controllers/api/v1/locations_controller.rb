# frozen string literal: true

class Api::V1::LocationsController < ApiController
  before_action :set_location, only: %w[show]

  def index
    @locations = Location.all
    # render json: {
    #   locations: @locations
    # }
  end

  def show
    # render json: {
    #   id: @location.id,
    #   name: @location.name
    # }
    render json: @location
  end

  private

  def set_location
    @location = Location.find_by!(slug: params[:id])
  end
end