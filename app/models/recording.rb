class Recording < ApplicationRecord
  belongs_to :location

  scope :below_freezing, -> { where('temp <= 32').order(temp: :desc) }
  scope :above_freezing, -> { where('temp > 32').order(temp: :desc) }
end
