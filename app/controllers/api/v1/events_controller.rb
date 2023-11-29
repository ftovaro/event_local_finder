class Api::V1::EventsController < Api::BaseController
  def index
    events = Event.includes(:user).all
    render json: { events: events.as_json(include: :user) }, status: :ok
  end
end
