class User < ApplicationRecord
  has_many :expenses
  has_many :messages

  validates_uniqueness_of :email
  validates :email, presence: true

  scope :all_except, ->(user) { where.not(id: user) }

  after_create_commit { broadcast_append_to "users" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
