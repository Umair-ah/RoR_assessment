class RemoveDoctorFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_reference :patients, :doctor, null: false, foreign_key: { to_table: :users }
  end
end
