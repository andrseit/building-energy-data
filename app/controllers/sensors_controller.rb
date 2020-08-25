class SensorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @sensors = Building.find(params[:building_id]).sensors
  end

  def create
    @body = building_params['sensor']
    @body.each do |s|
      Sensor.create!(s)
    end
  end

  private

    def building_params
      params.require(:sensors).permit(sensor: [:id, :building_id, :category])
    end
end
