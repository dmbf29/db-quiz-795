class Book < ActiveRecord::Base
  belongs_to :author # book.author
  has_many :readings # book.readings
  has_many :users, through: :readings
end
