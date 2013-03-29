class AddUserIdtoUserVideos < ActiveRecord::Migration
  def change
    add_column :user_videos, :user_id, :integer
  end
end
