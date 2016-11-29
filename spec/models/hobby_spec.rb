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

require 'rails_helper'

RSpec.describe Hobby, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
