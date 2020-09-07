class ProjectController < ApplicationController
	def get_vimeo_albums
		#TO DO: Select Vimeo showcases as projects (VERSION 2)
		# NOT WORKING
		@albums = Vimeo.user('chexvisual').albums.index
	
	end
end
