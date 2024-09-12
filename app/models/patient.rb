class Patient < ApplicationRecord

  has_many :appointments, dependent: :destroy
  has_many :doctors, -> { distinct }, through: :appointments, class_name: "Doctor"

end
