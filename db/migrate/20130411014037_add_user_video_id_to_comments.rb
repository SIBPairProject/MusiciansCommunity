class AddUserVideoIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_video_id, :integer
  end
end
