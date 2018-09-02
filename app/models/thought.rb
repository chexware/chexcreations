class Thought < ApplicationRecord
  has_many :comments, inverse_of: :thought
  has_and_belongs_to_many :tags
  validates :title, length: { minimum: 10, maximum: 100}, format: {with: /\A[a-z A-Z0-9]*\z/}
  validates :content, length: { minimum: 1000}
end
