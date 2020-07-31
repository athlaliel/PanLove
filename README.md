# README

![breadLove-title](https://user-images.githubusercontent.com/66309248/88990498-11882680-d319-11ea-9250-1df3fa9f08bc.jpeg)

# 🍞アプリ概要
パン好きな人が自分の好きなパンを投稿できるアプリ

# 💻開発環境

- Ruby 2.6.5
- Ruby on Rails 6.0.0
- MySQL 0.5.3 (DB)
- Github
- Visual Studio Code

# トップページ

![demo-bread](https://user-images.githubusercontent.com/66309248/88993328-975ba000-d320-11ea-8ff9-38b4d4cca5fd.gif)

# 🥖実装機能
- ログイン機能
- 投稿機能
- 画像ファイルのアップロード機能
- 都道府県の選択機能
- 投稿へのコメント機能
- 投稿の検索機能
- 投稿の、詳細表示、編集、削除の3機能
- ページネーション

# 投稿画面

![tweets](https://user-images.githubusercontent.com/66309248/88993835-f8d03e80-d321-11ea-8e3e-61f676a1f0a2.gif)

# コメント入力画面

![comment](https://user-images.githubusercontent.com/66309248/88995692-4babf500-d326-11ea-987a-4f80c9c7b2a8.gif)

# 投稿検索画面

![search](https://user-images.githubusercontent.com/66309248/88995748-70a06800-d326-11ea-9e86-bca99362815d.gif)

# ページネーション画面

![pagenation](https://user-images.githubusercontent.com/66309248/88995713-5cf50180-d326-11ea-97d0-23d78bf1ec01.gif)

# 🥐使用したGem
- gem 'pry-rails'
- gem 'devise'
- gem 'carrierwave'
- gem 'mini_magick'
- gem 'kaminari'
- gem 'active_hash'

# BreadLoveデータベース
- ※アプリ作成時名称「panlove」

# tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|text|varchar(255)
|image|text|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|genre_id|integer|null: false, foreign_key: true|

### Association
- extendActiveHash::Associations::ActiveRecordExtensions
- belongs_to_active_hash :genre
- belongs_to :user
- has_many :comments

# commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false, foreign_key: true|
|user_id |integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|

### Association
- has_many :tweets
- belongs_to :user


# usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false
|email |string|null: false
|password|string|null: false

### Association
- has_many :tweets 
- has_many :comments
- belongs_to :genre

