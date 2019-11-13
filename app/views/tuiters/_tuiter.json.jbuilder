json.extract! tuiter, :id, :user_id, :content, :created_at, :updated_at
json.url tuiter_url(tuiter, format: :json)
