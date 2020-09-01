class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal, :description, :image_url, :calorie_count, :calendar_date_id, :calendar_date
end
