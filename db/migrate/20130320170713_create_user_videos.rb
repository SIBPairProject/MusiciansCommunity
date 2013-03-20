class CreateUserVideos < ActiveRecord::Migration
  def change
    create_table :user_videos do |t|

      t.timestamps
    end
  end
end
