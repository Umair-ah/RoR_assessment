class Doctor < User
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments, class_name: "Patient"

end