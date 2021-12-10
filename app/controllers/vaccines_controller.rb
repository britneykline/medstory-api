class VaccinesController < ApplicationController
  def index
    p current_user
    if current_user
      vaccines = current_user.vaccines
      render json: vaccines 
    else
      render json: {message: "you must be logged in to use this page"}
    end
  end
  def create
    vaccine = Vaccine.new(
      title: params[:title],
      dose1_date: params[:dose1_date],
      dose2_date: params[:dose2_date],
      vac_image: params[:vac_image],
      user_id: current_user.id
    )
    if vaccine.save
      render json: vaccine
    else
      render json: {errors: vaccine.errors.full_messages}, status: :unprocessable_entity    
    end
  end 
end 
