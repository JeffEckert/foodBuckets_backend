class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal, :description, :image_url, :calorie_count, :category_id, :date, :category
end
