class ScheduleService < ApplicationRecord
  include Fae::BaseModelConcern

  before_save :set_total

  belongs_to :client
  has_many :schedule_service_items, dependent: :destroy
  accepts_nested_attributes_for :schedule_service_items, reject_if: :all_blank,
  allow_destroy: true
  
  def fae_display_field
    client.name
  end

  def self.for_fae_index
    order(:id)
  end

  def set_total
    self.total = schedule_service_items.inject(0){ |sum, item| sum + 
    item.service.price }
  end
  
end
