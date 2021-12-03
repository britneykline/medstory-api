class VaccinesController < ApplicationController
def index
  # p current_user
  vaccines = Vaccines.all
  render json: vaccines 
end
