class Book < ApplicationRecord
  belongs_to :author
  has_many :lendings
end
