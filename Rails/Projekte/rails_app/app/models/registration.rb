class Registration < ApplicationRecord
  belongs_to :event

  HOW_HEARD_OPTIONS = [
  	'Newsletter',
  	'Blog Post',
  	'Twitter',
  	'Other'
  ]

  validates :name, presence: true
  validates :email, format: { with: /(\S+)@(\S+)/ }
  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }

end
