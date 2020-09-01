class Api::V1::CalendarDatesController < ApplicationController

    def index
        calendar_dates = CalendarDate.all 
        render json: CalendarDateSerializer.new(calendar_dates)
    end

    def create 

    end
end
