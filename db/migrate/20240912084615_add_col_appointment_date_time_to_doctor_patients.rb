class AddColAppointmentDateTimeToDoctorPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :doctor_patients, :aptmt_date_time, :datetime
  end
end
