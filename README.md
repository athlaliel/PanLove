# README

![breadLove-title](https://user-images.githubusercontent.com/66309248/88990498-11882680-d319-11ea-9250-1df3fa9f08bc.jpeg)

## サイトURL
## https://www.bread-love.xyz/

# 🍞アプリ概要
- パン好きな人が自分の好きなパンを投稿できるアプリ

※追加した実装
- 9/10にゲストログイン機能を追加
- 投稿時、編集、削除時のフラッシュメッセージ実装
- 投稿時のエラーバリデーション実装
- 11/29 sslを用い、通信方式のhttps化が完了


# 💻開発環境

- Ruby 2.6.5
- Ruby on Rails 6.0.0
- MySQL 0.5.3 (DB)
- Github
- Visual Studio Code
- JavaScript
- jQuery
- AWS(デプロイ用にEC2、S3、Route53、ACMを使用)

# 制作背景
・一つのジャンルに絞った投稿共有がコンセプト。
・Twitterやインスタグラムを用いれば簡単に投稿できるが、反面何でも投稿できて雑然とし過ぎている。その為に一点特化させたかった。
・姪っ子が美味しそうにパンを食べている姿と、私がパン屋のパンが大好きな事から、美味しいパン専用の投稿を共有出来るアプリがあると良いと考えました。
　同時にパン自体のカロリーが大きいので、投稿を見て購入を制限させる意味合いもあります。

# トップページ

![demo-bread2](https://user-images.githubusercontent.com/66309248/89150392-69cd5b80-d599-11ea-9cfa-d8afcca378ad.gif)

### 作成者

<b><a><a href="https://github.com/athlaliel"><img src="https://avatars1.githubusercontent.com/u/66309248" width="70px;" /></a></b>

# 🥖実装機能
- ログイン機能
- 投稿機能
- 画像ファイルのアップロード機能
- 都道府県の選択機能
- 投稿へのコメント機能
- コメント時の非同期通信
- 投稿の検索機能
- 検索時のインクリメンタルサーチ
- 投稿の、詳細表示、編集、削除の3機能
- ページネーション
- 単体テスト機能

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
- gem 'rspec-rails', '~> 4.0.0.beta2'
- gem 'factory_bot_rails'
- gem 'rails-controller-testing'
- gem 'faker', "~> 2.8"
- gem 'fog-aws'
- gem 'unicorn', '5.4.1'
- gem 'capistrano'

# 🥯BreadLoveデータベース
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

### 並行して記載したQiita記事
## [画像・Gif動画を使ってReadmeを彩ろう](https://qiita.com/athlaliel/items/91adb2ac4bc229a2069a)
