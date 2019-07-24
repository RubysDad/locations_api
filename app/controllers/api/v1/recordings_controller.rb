# frozen string literal: true

class Api::V1::RecordingsController < ApiController
  def index
    case params[:scope]
    when 'below_freezing'
      @recordings = Recording.below_freezing
      render json: {
          below_freezing: @recordings
      }
    when 'above_freezing'
      @recordings = Recording.above_freezing
      render json: {
          above_freezing: @recordings
      }
    else
      @recordings = Recording.all
    end
  end
end
