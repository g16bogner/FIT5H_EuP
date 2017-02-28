class Lending < ApplicationRecord
  belongs_to :book
  belongs_to :user

  #scope :lended_open, ->(user_id) { where(return_date: nil, user_id: user_id )}
  scope :given_user, ->(user_id) { where(user_id: user_id)}
  scope :lended_open, -> { where(return_date: nil)}
  scope :lended_returned, -> { where.not(return_date: nil)}
end
