# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  code          :string           not null
#  name          :string           not null
#  big_city_flag :integer          not null
#  prefecture_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  population    :integer          default(0), not null
#
# Indexes
#
#  index_cities_on_code           (code) UNIQUE
#  index_cities_on_prefecture_id  (prefecture_id)
#
# Foreign Keys
#
#  fk_rails_584d859bfb  (prefecture_id => prefectures.id)
#

class City < ApplicationRecord
  belongs_to :prefecture
  has_many :counts, dependent: :destroy
  has_one :shop, dependent: :destroy
  has_one :spot, dependent: :destroy

  # FIXME
  def score
    if (value = counts.sum(&:value)).zero?
      [*1..60].sample
    else
      (Math.log10(value) * 10).to_i
    end
  end
end
