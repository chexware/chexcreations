class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :title, :kind, :link, presence: true
    validates :link, format: {with: /https?:\/\/[\S]+/, message: "Must be valid url"}
	validates :title, format: {with: /\A[a-z A-Z0-9]*\z/, message: "Must be valid alphanumeric"}
end
