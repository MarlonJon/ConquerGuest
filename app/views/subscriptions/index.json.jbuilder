json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :name, :email
  json.url subscription_url(subscription, format: :json)
end
