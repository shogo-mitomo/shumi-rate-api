# == Schema Information
#
# Table name: hobbies
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_hobbies_on_name  (name) UNIQUE
#

class HobbySerializer < ActiveModel::Serializer
  attributes :id, :name
end
