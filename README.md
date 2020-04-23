# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
### Association
- has_many :comments
- has_many :images

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|country|string|null: false|
|category|string|null: false|
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
|image_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :image

## countriesテーブル
|Column|Type|Options|
|------|----|-------|
|country|integer|null: false|
### Association
- has_many :images

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category|integer|null: false|
### Association
- has_many :images
