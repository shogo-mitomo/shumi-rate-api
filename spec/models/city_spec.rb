# == Schema Information
#
# Table name: cities
#
#  id            :integer          not null, primary key
#  code          :string           not null
#  name          :string           not null
#  population    :integer          default(0), not null
#  big_city_flag :integer          not null
#  prefecture_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_cities_on_code           (code) UNIQUE
#  index_cities_on_prefecture_id  (prefecture_id)
#
# Foreign Keys
#
#  fk_rails_cc74ecd368  (prefecture_id => prefectures.id)
#

require 'rails_helper'

RSpec.describe City, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
