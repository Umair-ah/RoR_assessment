class Patient < ApplicationRecord

  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients, class_name: "Doctor"

end
