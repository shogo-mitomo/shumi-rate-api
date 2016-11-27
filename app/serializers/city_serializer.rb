class CitySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :population, :score
  has_one :shop, serializer: ::ShopSerializer
  has_one :spot, serializer: ::SpotSerializer
end
