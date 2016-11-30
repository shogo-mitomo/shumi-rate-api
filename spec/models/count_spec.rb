# == Schema Information
#
# Table name: counts
#
#  id         :integer          not null, primary key
#  type       :string           not null
#  value      :integer          default(0), not null
#  city_id    :integer          not null
#  hobby_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_counts_on_city_id   (city_id)
#  index_counts_on_hobby_id  (hobby_id)
#  index_counts_on_type      (type)
#
# Foreign Keys
#
#  fk_rails_48d7365507  (city_id => cities.id)
#  fk_rails_724d681eb2  (hobby_id => hobbies.id)
#

require 'rails_helper'

RSpec.describe Count, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
