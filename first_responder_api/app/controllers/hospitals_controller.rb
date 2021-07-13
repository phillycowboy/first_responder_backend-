class HospitalsController < ApplicationController

    def index 
        hospitals = Hospital.all 
        render json: hospitals, include: [:patients]
    end

    def create 
        hospital = Hospital.new(hospital_params)
        if hospital.save 
            render json: hospital
        else 
            render json: {
                error: hospital.errors.full_messages
            }
        end 
    end

    private 

    def hospital_params 
        params.require(:hospital).permit(:name, :address, :phone_number)
    end
end
