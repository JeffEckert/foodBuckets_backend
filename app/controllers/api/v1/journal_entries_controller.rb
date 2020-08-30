class Api::V1::JournalEntriesController < ApplicationController

    def index
        journal_entries = JournalEntry.all 
        render json: journal_entries
    end

    def create
        journal_entries = JournalEntry.new(journal_entry_params)
    end

    private

    def journal_entry_params
        params.require(:Journal_entry).permit(:meal, :description, :image_url, :calorie_count, :calendar_date_id)
    end
end
