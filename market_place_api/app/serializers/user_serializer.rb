class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email
  has_many :products
  cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 1.hour
end
