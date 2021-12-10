class UsersController < ApplicationController
  def index
    users = User.all 
    render json: users.as_json
  end

  def create
    p params[:password]
    user = User.new(
      f_name: params[:f_name],
      l_name: params[:l_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    p user.password
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity    
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.f_name = params[:f_name] || user.f_name 
    user.l_name = params[:l_name] || user.l_name
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
    user.password_digest = params[:password_digest] || user.password_digest
    if user.save
      render json: user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity    
    end
  end
end
