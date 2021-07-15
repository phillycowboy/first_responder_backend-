class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :gender
      t.string :pronouns
      t.string :heart_rate
      t.string :blood_pressure
      t.string :respiration_rate
      t.string :temperature
      t.string :blood_glucose_level
      t.string :end_tidal
      t.string :chief_complaint
      t.string :on_scene_description
      t.belongs_to :hospital
      t.timestamps
    end
  end
end
