class ScheduleServiceJob < ApplicationJob
  queue_as :emails
  
  def perform(schedule_service)
    MarketingMailer.schedule_service(schedule_service).deliver_now
  end
end