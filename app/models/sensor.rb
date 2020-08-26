class Sensor < ApplicationRecord
  belongs_to :building
  has_many :measurements, dependent: :destroy
end
