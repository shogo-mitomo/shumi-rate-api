class PrefectureSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :score
  has_many :cities
end
