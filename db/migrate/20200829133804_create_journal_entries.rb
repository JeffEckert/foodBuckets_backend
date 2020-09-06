class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :meal
      t.string :description
      t.string :image_url
      t.string :date
      t.belongs_to :catagory
      t.integer :calorie_count
      
      t.timestamps
    end
  end
end
