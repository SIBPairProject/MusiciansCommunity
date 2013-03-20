class CreateUserVideos < ActiveRecord::Migration
  def change
    create_table :user_videos do |t|
      t.string :title
      t.string :video_embed
      t.text :description

      t.timestamps
    end
  end
end
