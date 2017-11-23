class ScheduleServiceItem < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :service
  belongs_to :schedule_service

  enum status: { Waiting: 0, Done: 1, Canceled: 2 }

  validates :service, :status, :date, presence: true
  
end
