class Item < ApplicationRecord
  # enum status: [:pending, :working, :finished, :skiped]
  
  belongs_to :user
end
