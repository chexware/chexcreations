class ProjectController < ApplicationController
	def load
		@contact = Contact.new
		@projects = Project.all
	end
	

	def get_vimeo_albums
		#TO DO: Select Vimeo showcases as projects (VERSION 2)
		# NOT WORKING
		@albums = Vimeo.user('chexvisual').albums.index
	
	end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :link,  :image)
  end
  
end
