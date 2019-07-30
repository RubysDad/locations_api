# frozen string literal: true

class Api::V1::LocationsController < ApiController
  before_action :set_location, only: %w[show]

  def index
    @locations = Location.all
  end

  def show
    render json: @location, include: ['recordings']
  end

  private

  def set_location
    @location = Location.find_by!(slug: params[:id])
  end
end