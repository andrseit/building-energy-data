class BuildingsController < ApplicationController

  skip_before_action :verify_authenticity_token

    def show
      @building = Building.find(params[:id])
    end

    def create
      @body = building_params['building']
      @body.each do |b|
        Building.create!(b)
      end
    end

    private

      def building_params
        params.require(:buildings).permit(building: [:id, :description, :construction_year,
              :location, :location_x, :location_y, :flats, :floors,
              :cellar, :bim, :roof_area, :blind_facade_area, :opend_facade_area,
              :gross_surface_area, :total_pra, :process_pra, :product_pra])
      end

end
