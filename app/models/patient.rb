class Patient < ApplicationRecord
  belongs_to :doctor, class_name: "Doctor"

  validates :name, :doctor_id, presence: true
end
