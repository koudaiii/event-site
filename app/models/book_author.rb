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

class BookAuthor < ActiveRecord::Base
  belongs_to :book
  belongs_to :author
end
