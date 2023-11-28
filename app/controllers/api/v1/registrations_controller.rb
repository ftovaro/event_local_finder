class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token
  respond_to :json
  
  def create
    build_resource(sign_up_params)
    if resource.save
      render json: { message: "User created" }, status: :ok
    else
      render json: { message: "User not created", errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
