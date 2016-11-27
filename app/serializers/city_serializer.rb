class CitySerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :score
end
