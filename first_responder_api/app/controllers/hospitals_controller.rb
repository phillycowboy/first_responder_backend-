class HospitalsController < ApplicationController

    def index 
        hospitals = Hospital.all 
        render json: hospitals, include [:patients]
    end
end
