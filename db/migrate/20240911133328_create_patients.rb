class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.references :doctor, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
