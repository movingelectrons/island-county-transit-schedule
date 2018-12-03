class RoutesController < ApplicationController
  #before_action :set_route, only: [:show, :edit, :update, :destroy]
  
  # GET /routes
  # GET /routes.json
  def index
    @routes = Route.all
  end

  # GET /routes/1
  # GET /routes/1.json
  def show
    @route = Route.find(params[:id])
  end

end
