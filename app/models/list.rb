class List < ApplicationRecord
  # enum status: [:pending, :working, :finished, :skiped]
  
  has_many :items
  belongs_to :user
end
