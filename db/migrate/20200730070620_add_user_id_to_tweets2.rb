class AddUserIdToTweets2 < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :genre_id, :integer
  end
end
