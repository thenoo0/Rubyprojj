class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      redirect_to vehicles_path
    else
      render 'new'
    end
  end

  def update
    if @vehicle.update_attributes(vehicle_params)
      redirect_to vehicles_path
    else
      render 'edit'
    end
  end

  def destroy
    @vehicle.destroy

    redirect_to vehicles_path
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:brand, :model, :year, :power, :description  )
    end
end
