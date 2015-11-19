class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validate :comment, length: { maximum: 30 }, allow_blank: true
end
