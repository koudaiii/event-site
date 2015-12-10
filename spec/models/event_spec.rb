require 'rails_helper'

describe Event do
  describe '#name' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name) }
  end
end
