class Article < ApplicationRecord
    validates :title,  :content, presence: true
	validates :title, format: {with: /\A[a-z A-Z0-9]*\z/, message: "Must be valid alphanumeric"}
end
