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

require 'rails_helper'

RSpec.describe BookAuthor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
