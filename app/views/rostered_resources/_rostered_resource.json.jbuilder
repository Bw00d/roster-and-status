json.extract! rostered_resource, :id, :user_id, :roster_id, :created_at, :updated_at
json.url rostered_resource_url(rostered_resource, format: :json)
