class PatientsController < ApplicationController

    def index 
        patients = Patient.all 
        render json: patients
    end

    def create 
        patient = Patient.new(patient_params)
            if patient.save 
                render json: patient, include: [:hospital]
            else 
                render json: {
                errror: patient.errors.full_messages
            }
        end 

    end


    private 
    def patient_params 
        params.require(:patient).permit(:first_name, :last_name, :age, :gender, :pronouns, :heart_rate, :blood_pressure, :respiration_rate, :pulse, :temperature, :blood_glucose_level, :end_tidal, :chief_complaint, :on_scene_description, :hospital_id)
    end
end
