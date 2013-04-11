class Stats < ActiveRecord::Migration
  def change
  	create_table :stats do |t|
	  	t.string :quality
	  	t.integer :score
	  	t.integer :user_video_id
	  	t.integer :user_id
	  	t.integer :rater_id

	  	t.timestamp
	  end
  end
end
