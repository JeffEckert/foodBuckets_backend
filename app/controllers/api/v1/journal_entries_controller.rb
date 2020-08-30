class Api::V1::JournalEntriesController < ApplicationController

    def index
        @journal_entries = JournalEntry.all 
        render json: @journal_entries
    end
end
