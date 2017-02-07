class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  HOW_HEARD_OPTIONS = [
  	'Newsletter',
  	'Blog Post',
  	'Twitter',
  	'Other'
  ]

  validates :user_id, presence: true
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }

end
