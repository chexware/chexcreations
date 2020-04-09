class Project < ApplicationRecord
	has_one_attached :image
	validates :title, :kind, :link, presence: true
    validates :link, format: {with: /https?:\/\/[\S]+/, message: "Must be valid url"}
	validates :title, format: {with: /\A[a-z A-Z0-9]*\z/, message: "Must be valid alphanumeric"}
	validates :kind, format:{with: /\A(Art|Software)\z/, message: "There are only art and software projects for now"}
end
