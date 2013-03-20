class CreateWeeklyTunes < ActiveRecord::Migration
  def change
    create_table :weekly_tunes do |t|
      t.string :title
      t.string :genre
      t.string :artist
      t.date :date_from
      t.date :date_to
      t.text :description

      t.timestamps
    end
  end
end
