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
#  fk_rails_976a7ef2fa  (city_id => cities.id)
#  fk_rails_c20bf40fc6  (hobby_id => hobbies.id)
#

class Shop < Count
end
