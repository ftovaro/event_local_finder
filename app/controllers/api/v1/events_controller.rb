class Api::V1::EventsController < ApplicationController
  def index
    events = Event.includes(:user).all
    render json: { events: events.as_json(include: :user) }, status: :ok
  end
end
