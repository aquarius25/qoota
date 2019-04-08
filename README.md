# Qoota

## Overview
Airticle post site like Qiita.

## All functions
- 記事一覧表示機能
  - article_index内で配列で実装
- 記事詳細表示機能
  - user_idで記事の詳細を分けた
- 記事投稿機能
  - create機能（controller内）
- 管理ユーザー登録機能
  - gem "devise"を使った
- 管理ユーザーログイン機能
  - gem "devise"を使った
- 画像ファイルアップロード機能
  - gem "carrierwave","minimajick"を使った
- DBテーブルのrelation機能
  - 1対多,多対多（予定）を使う（model内）
- DBトランザクションの制御機能
  - migration_fileでDBを構築
- pagenation機能（予定）
  - gem "kaminari"を使う
- 単体テスト機能（予定）
  - rspecを使う
- 統合テスト機能（予定）

## All Technology


## DB tables

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unipue: true|
|email|string|null: false, unique: true|
|image|string|
|family_name|string|
|real_name|string|
|url_fb|string|unique: true|
|url_twitter|string|unique: true|
|url_github|string|unique: true|

#### Association
- has_many :articles

### articleテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false, index: true|
|explain|text|
|text|text|null: false|
|user_id|integer|foreign_key: true|


#### Association
- belongs_to :user
