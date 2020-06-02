# アプリ名

### Triphoto

# 概要

#### 旅行の写真を検索・管理できるアプリです。

+ カテゴリーや国名を指定して検索もできます。
+ ユーザー登録をすれば自分の写真をアップロードできます。
+ 気に入った写真はいいね！することでお気に入り登録ができます。

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

また、自分のこれまでの訪問国と写真をセットで地図上で管理できるようにしようと考えています。（実装中）

# デモ
<img width="1394" alt="スクリーンショット 2020-06-02 9 03 46" src="https://user-images.githubusercontent.com/61265522/83465786-039c5d80-a4b0-11ea-8f64-64865ee39d7c.png">


# 工夫したポイント

景観・食べ物・人の3カテゴリーに分け、カテゴリーごとに写真を見られるようにしました。

また、検索窓から国名検索ができ、国名タグからも国を指定して見ることもできます。

# 使用技術（開発環境）

Ruby / Ruby on Rails / MySQL / PostgreSQL / Github / Heroku / Visual Studio Code

# 実装中の機能・今後実装したい機能

+ ユーザーの訪問国を地図上で管理できるようにしようと考えています。（実装中）
<img width="1394" alt="スクリーンショット 2020-06-02 8 58 52" src="https://user-images.githubusercontent.com/61265522/83465761-eebfca00-a4af-11ea-8fc8-a913dfe4ac82.png">

+ ユーザー同士が写真にコメントできる機能を付けることで、やりとりができるようにしようと思っています。
+ そのまま旅行予約サイトへのリンクをつけて、より便利なアプリケーションにしていきたいです。

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
### Association
- has_many :comments
- has_many :posts
- has_many :likes

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|post|string|null: false|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|country_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :country
- belongs_to :category
- has_many :comments
- has_many :likes

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

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

