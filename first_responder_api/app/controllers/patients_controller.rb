class PatientsController < ApplicationController

    def index 
        patients = Patient.all 
        render json: patients, include: [:hospital]
    end

    def create 
        patient = Patient.new(patient_params)
            if patient.save 
                render json: patient, include: [:hospital]
            else 
                render json: {
                error: patient.errors.full_messages
            }
        end 

    end

    def show 
        patient = Patient.find_by(id: params[:id])
        if patient
            render json: patient
        else 
            render json: {
                error: "Patient Not Found"
            }
        end
    end

    def destroy 
        patient = Patient.find_by(id: params[:id])
        binding.pry
        if patient
            patient.destroy
            render json: patient
        else
            render json: {
                error: "Patient Could Not Be Deleted"
            }
        end 

    end


    private 
    def patient_params 
        params.require(:patient).permit(:first_name, :last_name, :age, :gender, :pronouns, :heart_rate, :blood_pressure, :respiration_rate, :pulse, :temperature, :blood_glucose_level, :end_tidal, :chief_complaint, :on_scene_description, :hospital_id)
    end
end
