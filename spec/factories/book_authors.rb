# == Schema Information
#
# Table name: book_authors
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :book_author do
    book nil
author nil
  end

end
