class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :value, presence: true
  validates :kind, presence: true

  enum kind: { fixed: 0, percent: 1 }

  def fae_display_field
    title
  end


end
