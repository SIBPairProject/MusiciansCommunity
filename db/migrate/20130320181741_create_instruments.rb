class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :type
      t.string :level

      t.timestamps
    end
  end
end
