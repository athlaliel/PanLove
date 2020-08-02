class AddIndexToTweets < ActiveRecord::Migration[6.0]
  def change
    add_index :tweets, :text, length: 32
  end
end
