class Api::V1::JournalEntriesController < ApplicationController

    def index
        journal_entries = JournalEntry.all 
        render json: journal_entries
    end

    def create
        journal_entry = JournalEntry.new(journal_entry_params)
        if journal_entry.save
            render json: journal_entry, status: :accepted 
        else
            render json: {errors: journal_entry.errors.full_messages}, status: :uprocessable_entity
    end

    private

    def journal_entry_params
        params.require(:Journal_entry).permit(:meal, :description, :image_url, :calorie_count, :calendar_date_id)
    end
end
