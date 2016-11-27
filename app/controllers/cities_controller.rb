class CitiesController < ApplicationController
  def index
    render json: ::City.all, include: []
  end

  def show
    render json: ::City.find(params[:id])
  end
end
