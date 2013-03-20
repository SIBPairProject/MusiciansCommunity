class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|

      t.timestamps
    end
  end
end
