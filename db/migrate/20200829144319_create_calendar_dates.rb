class CreateCalendarDates < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_dates do |t|
      t.string :date

      t.timestamps
    end
  end
end
