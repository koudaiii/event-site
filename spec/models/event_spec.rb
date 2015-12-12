# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  owner_id    :integer          not null
#  name        :string(50)       not null
#  place       :string(100)      not null
#  start_time  :datetime         not null
#  end_time    :datetime         not null
#  content     :string(2000)     not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_image :string
#

require 'rails_helper'

describe Event do
  describe '#name' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name) }
  end
end
