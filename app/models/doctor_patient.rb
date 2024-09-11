class DoctorPatient < ApplicationRecord
  belongs_to :doctor, class_name: "Doctor"
  belongs_to :patient
end
