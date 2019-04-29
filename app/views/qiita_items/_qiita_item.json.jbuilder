json.extract! qiita_item, :id, :title, :url, :like_count, :created_at, :updated_at
json.url qiita_item_url(qiita_item, format: :json)
