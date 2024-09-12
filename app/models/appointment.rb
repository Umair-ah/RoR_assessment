class Appointment < ApplicationRecord
  belongs_to :doctor, class_name: "Doctor"
  belongs_to :patient, class_name: "Patient"
end
