# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
h = Hospital.create(name: "St Mercy", address:"3241 W Elm St, Raleigh, NC", phone_number:"919-400-4433")
h2 = Hospital.create(name: "Trauma Center", address:"1234 Stitch St, Durham, NC", phone_number:"919-100-4000")
h3 = Hospital.create(name: "Pediatric Care Center", address:"3000 N Forest Dr, Wake Forest, NC", phone_number:"919-800-6677")

p = Patient.create(first_name: "Ben", last_name:"Murphy", age:"29", gender:"M", pronouns:"he/him", heart_rate: "100bpm", blood_pressure:"120/60", respiration_rate:"40pm", temperature:"98.6", blood_glucose_level:"90 mg/dl", end_tidal:"35 mmHg", chief_complaint:"Concussion", on_scene_description:"Patient was working in garage and slipped on some oil causing a fall and a hit to head", hospital_id: h.id, arrival_time: "13:58", date_of_arrival: "2021-07-22")
p2 = Patient.create(first_name: "Lynne", last_name:"Murphy", age:"60", gender:"F", pronouns:"she/her", heart_rate: "120bpm", blood_pressure:"140/80", respiration_rate:"50pm", temperature:"100.0", blood_glucose_level:"100 mg/dl", end_tidal:"45 mmHg", chief_complaint:"Burn Victim", on_scene_description:"Patient was cooking dinner in the kitchen when carrying over a boiling pot of water and suffered burns on the right forearm, and right shin", hospital_id: h2.id, arrival_time: "10:58", date_of_arrival: "2021-07-22")
p3 = Patient.create(first_name: "Joe", last_name:"Murphy", age:"71", gender:"M", pronouns:"he/him", heart_rate: "130bpm", blood_pressure:"130/60", respiration_rate:"50pm", temperature:"98.0", blood_glucose_level:"100 mg/dl", end_tidal:"45 mmHg", chief_complaint:"Badly Cut", on_scene_description:"Patient was mowing the lawn when the blade snapped off and cut his left foot on the right side, patient is stable and, and a compression has been made to foot", hospital_id: h3.id,arrival_time: "17:58", date_of_arrival: "2021-07-22")

puts 'Done seeding'