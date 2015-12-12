# == Schema Information
#
# Table name: user_decorators
#
#  id          :integer          not null, primary key
#  first_name  :string
#  family_name :string
#  email       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :user_decorator do
    first_name "MyString"
family_name "MyString"
email "MyString"
  end

end
