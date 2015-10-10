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

FactoryGirl.define do
  factory :book do
    name "MyString"
published_on "2015-09-29"
price 1
number_of_page 1
  end

end
