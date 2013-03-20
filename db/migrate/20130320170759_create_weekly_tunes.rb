class CreateWeeklyTunes < ActiveRecord::Migration
  def change
    create_table :weekly_tunes do |t|

      t.timestamps
    end
  end
end
