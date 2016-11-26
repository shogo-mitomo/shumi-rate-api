# == Schema Information
#
# Table name: counts
#
#  id         :integer          not null, primary key
#  type       :string           not null
#  value      :integer          default(0), not null
#  cities_id  :integer          not null
#  hobbies_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_counts_on_cities_id   (cities_id)
#  index_counts_on_hobbies_id  (hobbies_id)
#  index_counts_on_type        (type)
#
# Foreign Keys
#
#  fk_rails_976a7ef2fa  (cities_id => cities.id)
#  fk_rails_c20bf40fc6  (hobbies_id => hobbies.id)
#

class Count < ApplicationRecord
  belongs_to :cities
  belongs_to :hobbies
end
