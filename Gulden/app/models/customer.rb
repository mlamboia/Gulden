class Customer < ApplicationRecord
  after_commit :customers, on: [:update, :destroy]

  validates :name, presence: true
end
