class BookingSerializer
  include JSONAPI::Serializer
  attributes :id, :number_of_bags, :starts_at, :ends_at, :store, :user
end
