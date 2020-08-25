class Building < ApplicationRecord
  has_many :sensors, dependent: :destroy
end
