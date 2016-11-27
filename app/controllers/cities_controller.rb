class CitiesController < ApplicationController
  def show
    render json: ::City.find(params[:id])
  end
end
