module Api
  class BaseController < ActionController::Base
    before_action :validate_token
    skip_before_action :verify_authenticity_token

    def validate_token
      token = request.headers['X-Api-Token']
      render json: { message: "Unauthorized" }, status: :unauthorized if token != session_token
    end

    def session_token
      Rails.application.credentials.user[:access_token]
    end
  end

end
