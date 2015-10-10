# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publisher < ActiveRecord::Base
  has_many :books
end
