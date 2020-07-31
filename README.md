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

# テーブル一覧
+-------------------------------+
| Tables_in_panlove_development |
+-------------------------------+
| ar_internal_metadata          |
| comments                      |
| schema_migrations             |
| tweets                        |
| users                         |
+-------------------------------+

# tweetsテーブル
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | bigint(20)   | NO   | PRI | NULL    | auto_increment |
| text       | varchar(255) | YES  |     | NULL    |                |
| image      | text         | YES  |     | NULL    |                |
| created_at | datetime(6)  | NO   |     | NULL    |                |
| updated_at | datetime(6)  | NO   |     | NULL    |                |
| user_id    | int(11)      | YES  |     | NULL    |                |
| genre_id   | int(11)      | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

# commentsテーブル
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | bigint(20)  | NO   | PRI | NULL    | auto_increment |
| user_id    | int(11)     | YES  |     | NULL    |                |
| tweet_id   | int(11)     | YES  |     | NULL    |                |
| text       | text        | YES  |     | NULL    |                |
| created_at | datetime(6) | NO   |     | NULL    |                |
| updated_at | datetime(6) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

# usersテーブル
+------------------------+--------------+------+-----+---------+----------------+
| Field                  | Type         | Null | Key | Default | Extra          |
+------------------------+--------------+------+-----+---------+----------------+
| id                     | bigint(20)   | NO   | PRI | NULL    | auto_increment |
| email                  | varchar(255) | NO   | UNI |         |                |
| encrypted_password     | varchar(255) | NO   |     |         |                |
| reset_password_token   | varchar(255) | YES  | UNI | NULL    |                |
| reset_password_sent_at | datetime     | YES  |     | NULL    |                |
| remember_created_at    | datetime     | YES  |     | NULL    |                |
| created_at             | datetime(6)  | NO   |     | NULL    |                |
| updated_at             | datetime(6)  | NO   |     | NULL    |                |
| nickname               | varchar(255) | YES  |     | NULL    |                |
+------------------------+--------------+------+-----+---------+----------------+

