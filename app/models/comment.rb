class Comment < ApplicationRecord
  belongs_to :thought
  validates :thought, presence: true
  validates :thought_id, presence: true
  validates :author, length: { minimum: 3, maximum: 30}, format: {with: /\A[a-z A-Z]*\z/, message: "Must be a valid name"}
  validates :content, length: { minimum: 3, maximum: 500}
end
