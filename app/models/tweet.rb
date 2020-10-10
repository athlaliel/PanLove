class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy

  #空の投稿を保存できないようにする
  validates :text, {presence: true, length: {maximum: 70}}
  validates :image, :genre_id, presence: true

  #選択が「--」のままになっていないか
  # with_options numericality: { other_than: 1 } do
  #   validates :genre_id
  # end

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

end
