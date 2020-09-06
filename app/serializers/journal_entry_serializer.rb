class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal, :description, :image_url, :calorie_count, :catagory_id, :date
end
