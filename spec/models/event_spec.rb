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

  describe '#rails?' do
    context '#name が "Rails勉強会" のとき' do
      it 'true を返すこと' do
        event = create(:event, name: 'Rails勉強会')
        expect(event.rails?).to eq true
      end
    end

    context '#name が "Ruby勉強会" のとき' do
      it 'true を返すこと' do
        event = create(:event, name: 'Ruby勉強会')
        expect(event.rails?).to eq false
      end
    end
  end


  describe '#name' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name) }
  end

  describe '#created_by?' do
    let(:event) { create(:event) }
    subject { event.created_by?(user) }

    context '引数が nil なとき' do
      let(:user) { nil }
      it { should be_falsey }
    end

    context '#owner_id と 引数の#id が同じとき' do
      let(:user) { double('user', id: event.id) }
      it { should be_truthy }
    end
  end
end
