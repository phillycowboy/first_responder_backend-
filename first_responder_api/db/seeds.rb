# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
h = Hospital.create(name: "St Mercy", address:"3241 W Elm St, Raleigh, NC", phone_number:"919-400-4433")
h = Hospital.create(name: "Trauma Center", address:"1234 Stitch St, Durham, NC", phone_number:"919-100-4000")
h = Hospital.create(name: "Pediatric Care Center", address:"3000 N Forest Dr, Wake Forest, NC", phone_number:"919-800-6677")

p = Patient.create(first_name: "Ben", last_name:"Murphy", age:"29", gender:"M", pronouns:"he/him", heart_rate: "100bpm", blood_pressure:"120/60", respiration_rate:"40pm", temperature:"98.6", blood_glucose_level:"90 mg/dl", end_tidal:"35 mmHg", chief_complaint:"Concussion", on_scene_description:"Patient was working in garage and slipped on some oil causing a fall and a hit to head", hospital_id: h.id)
