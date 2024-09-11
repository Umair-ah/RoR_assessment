class Patient < ApplicationRecord
  belongs_to :doctor, class_name: "Doctor"

  has_many :doctor_patients
  has_many :doctors, through: :doctor_patients, class_name: "Doctor"

  validates :name, :doctor_id, presence: true
end
