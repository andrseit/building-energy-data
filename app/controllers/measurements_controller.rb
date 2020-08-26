class MeasurementsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @measurements = Sensor.find(params[:sensor_id]).measurements
  end

  def create
    @body = building_params['measurement']
    @body.each do |m|
      Measurement.create!(m)
    end
  end

  private

    def building_params
      params.require(:data).permit(measurement: [:sensor_id, :value,
         :units, :timestamp])
    end
end
