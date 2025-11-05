class FallsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def detect
    fall = Fall.new(status: params[:status], detected_at: Time.now)
    if fall.save
      render json: { message: "Fall recorded successfully!", fall: fall }, status: :created
    else
      render json: { error: "Failed to record fall" }, status: :unprocessable_entity
    end
  end

  def index
    falls = Fall.all
    render json: falls
  end
end
