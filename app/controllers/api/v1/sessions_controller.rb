class Api::V1::SessionsController < Api::BaseController
  skip_before_action :validate_token

  def create
    user = User.find_by(email: params[:email])
    if user&.valid_password?(params[:password])
      render json: { token: Rails.application.credentials.user[:access_token] }, status: :ok
    else
      render json: { token: "", message: "Unathorized" }, status: :unprocessable_entity
    end
  end
end
