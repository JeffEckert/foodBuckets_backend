class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :meal
      t.string :description
      t.string :image_url
      t.belongs_to :calendar_date
      t.integer :calorie_count
      
      t.timestamps
    end
  end
end
