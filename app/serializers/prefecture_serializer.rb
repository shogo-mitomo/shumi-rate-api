class PrefectureSerializer < ActiveModel::Serializer
  attributes :id, :code, :name
  has_many :cities
end
