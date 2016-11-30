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

class Count < ApplicationRecord
  belongs_to :city
  belongs_to :hobby

  # FIXME
  def score
    [*1..100].sample
  end

  # FIXME
  def items
    url      = 'https://maps.googleapis.com/maps/api/place/textsearch/json'
    query    = [hobby.name, city.name].join('+')
    params   = { key: ENV['GOOGLE_API_KEY'], query: query }
    response = HTTP.get(url, params: params)
    Oj.load(response.body.to_s)['results']
      .map { |result| result.slice('formatted_address', 'name') }
  end
end
