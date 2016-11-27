class CitySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :score
  # FIXME: has_many :shops, :spots
end
