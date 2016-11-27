# == Schema Information
#
# Table name: prefectures
#
#  id         :integer          not null, primary key
#  code       :integer          not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_prefectures_on_code  (code) UNIQUE
#

class Prefecture < ApplicationRecord
  has_many :cities, dependent: :destroy

  # FIXME
  def score
    cities.sum(&:score) / cities.size
  end
end
