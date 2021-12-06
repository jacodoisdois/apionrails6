class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :price, :published
  belongs_to :user
  cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 1.hour
end
