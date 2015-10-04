class Book < ActiveRecord::Base
  scope :costly, -> { where("price > ?", 3000)}
  scope :written_about, ->(theme) { where("name like ?", "%#{theme}%") }

  belongs_to :publisher

  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: { maximum: 15 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validate do |book|
    if book.name.include?("exercise")
      book.errors[:name] << "I don't like exercise."
    end
  end
  before_validation :add_lovely_to_cat
  after_destroy :if => :high_price? do |book|
    Rails.logger.warn "Book with high price is deleted: #{book.attributes.inspect}"
    Rails.logger.warn "Please Check!!"
  end

  def add_lovely_to_cat
    self.name = self.name.gsub(/Cat/) do |matched|
      "lovely #{matched}"
    end
  end

  def high_price?
    price >= 5000
  end
end
