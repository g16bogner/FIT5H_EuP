class User < ApplicationRecord
  has_secure_password

  has_many :registrations, :dependent => :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_events, through: :likes, source: :event
  
  validates :name, presence: true 
  validates :email, presence: true, format: { with: /(\S+)@(\S+)/ }, uniqueness: { case_sensitive: false }
end
