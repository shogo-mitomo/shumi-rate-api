class CitySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :score
  has_many :shops, serializer: ::ShopSerializer
  has_many :spots, serializer: ::SpotSerializer
end
