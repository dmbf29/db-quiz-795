class Author < ActiveRecord::Base
  # associations
  has_many :books # author.books
  has_many :readings, through: :books # author.readings

  validates :name, presence: true # add more here...
end
