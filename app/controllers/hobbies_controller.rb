class HobbiesController < ApplicationController
  def index
    render json: ::Hobby.all
  end
end
