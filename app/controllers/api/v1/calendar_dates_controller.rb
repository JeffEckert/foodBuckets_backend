class Api::V1::CalendarDatesController < ApplicationController

    def index
        calendar_dates = CalendarDate.all 
        render json: CalendarDateSerializer.new(calendar_dates)
    end

    def create 
        calendar_date = CalendarDate.new(calendar_date_params)
        if calendar_date.save
            render json: calendar_date, status: :accepted 
        else
            render json: {errors: calendar_date.errors.full_messages}, status: :uprocessable_entity
        end
    end


    private

    def calendar_date_params
        params.require(:Calendar_date).permit(:date)
    end
end
