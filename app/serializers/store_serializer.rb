class StoreSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :address, :price_per_bag, :max_number_of_bags
end
