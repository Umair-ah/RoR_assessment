class Doctor < User
  has_many :doctor_patients
  has_many :patients, through: :doctor_patients

end