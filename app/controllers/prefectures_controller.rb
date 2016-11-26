class PrefecturesController < ApplicationController
  def index
    render json: ::Prefecture.all, include: []
  end

  def show
    render json: ::Prefecture.find(params[:id])
  end
end
