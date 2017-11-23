module Admin
  class ScheduleServicesController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]

    def adjust_enum
      params[:schedule_service][:schedule_service_items_attributes] = 
      params [:schedule_service][:schedule_service_items_attributes].each do |key, value|
        value["status"] = value["status"].to_i
      end
    end
  end
end
