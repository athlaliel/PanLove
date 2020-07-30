class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user
  has_many :comments

  #空の投稿を保存できないようにする
  validates :text, :image, :genre, presence: true

  #選択が「--」のままになっていないか
  with_options numericality: { other_than: 1 } do
    validates :genre_id
  end

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end

end
