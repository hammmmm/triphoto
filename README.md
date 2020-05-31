# アプリ名

### Triphoto

# 概要

#### 旅行の写真を検索・管理できるアプリです。

+ ユーザー登録をすれば自分の写真をアップロードできます。
+ 気に入った写真はいいね！することでお気に入り登録ができます。
+ マイページではこれまでに訪問した国を地図上で確認することができ、写真を国ごとに管理できます。

# 本番環境
<dl>
  <dt>デプロイ先</dt>
  <dd>https://tripphoto.herokuapp.com/</dd>
  <dt>テストアカウント</dt>
  <dd>name : usa</dd>
  <dd>email : usa@mail.com</dd>
  <dd>password : usa5353</dd>
</dl>

# 制作意図

旅行先を選ぶ際に国ありきではなく、写真から行きたい国を選ぶのもおもしろいなと思い作成しました。

また、自分のこれまでの訪問国と写真をセットで管理できるようにしたいと考え、地図上で管理できるようにしました。

# デモ
<img width="1394" alt="スクリーンショット 2020-05-31 11 15 58" src="https://user-images.githubusercontent.com/61265522/83343002-3cadc400-a330-11ea-9836-a125aafdf5dc.png">

# 工夫したポイント

自分のこれまでの訪問国はマイページから確認でき、地図上で色付きされるようにしました。

# 使用技術（開発環境）

Ruby / Ruby on Rails / MySQL / PostgreSQL / Github / Heroku / Visual Studio Code

# 今後実装したい機能

+ ページ推移がわかりづらいため、パンくず機能を実装したいです。
+ ユーザー同士が写真にコメントできる機能を付けることで、やりとりができるようにしようと思っています。
+ そのまま旅行予約サイトへのリンクをつけて、より便利なアプリサイトにしていきたいです。

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
### Association
- has_many :comments
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|post|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|country_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :country
- belongs_to :category
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

## countriesテーブル
|Column|Type|Options|
|------|----|-------|
|country|integer|null: false|
### Association
- has_many :posts

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category|integer|null: false|
### Association
- has_many :posts
