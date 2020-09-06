class Api::V1::JournalEntriesController < ApplicationController

    def index
        journal_entries = JournalEntry.all 
        render json: JournalEntrySerializer.new(journal_entries)
    end

    def create
        journal_entry = JournalEntry.new(journal_entry_params)
        # byebug
        if journal_entry.save
            render json: journal_entry, status: :accepted 
        else
            render json: {errors: journal_entry.errors.full_messages}, status: :uprocessable_entity
        end
    end

    private

    def journal_entry_params
        params.require(:journal_entry).permit(:meal, :description, :image_url, :calorie_count, :category_id, :date)
    end
end
