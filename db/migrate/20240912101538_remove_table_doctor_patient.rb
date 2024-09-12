class RemoveTableDoctorPatient < ActiveRecord::Migration[7.0]
  def change
    drop_table :doctor_patients
  end
end
