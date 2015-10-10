# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  name           :string
#  published_on   :date
#  price          :integer
#  number_of_page :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  publisher_id   :integer
#  status         :integer
#

require 'rails_helper'

RSpec.describe Book, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
