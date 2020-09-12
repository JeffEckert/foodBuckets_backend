class Api::V1::JournalEntriesController < ApplicationController

    def index
        journal_entries = JournalEntry.all 
        render json: JournalEntrySerializer.new(journal_entries)
    end

    def create
        journal_entry = JournalEntry.new(journal_entry_params)
        # byebug
        if journal_entry.save
            render json: JournalEntrySerializer.new(journal_entry) 
        else
            render json: {errors: journal_entry.errors.full_messages}, status: :uprocessable_entity
        end
    end

    def destroy
      journal_entry =  JournalEntry.find(params[:id])
      journal_entry.destroy
    end

    private

    def journal_entry_params
        params.require(:journal_entry).permit(:meal, :description, :image_url, :calorie_count, :category_id, :date)
    end
end
