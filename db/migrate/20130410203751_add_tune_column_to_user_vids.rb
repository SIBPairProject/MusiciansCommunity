class AddTuneColumnToUserVids < ActiveRecord::Migration
  def change
    add_column :user_videos, :weekly_tune_id, :integer
  end
end
