class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :meal
      t.string :description
      t.integer :date_id
      t.integer :calorie_count

      t.timestamps
    end
  end
end
