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

require 'rails_helper'

RSpec.describe Prefecture, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
