class CreateDoctorPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_patients do |t|
      t.belongs_to :doctor, null: false, foreign_key: { to_table: :users }
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
