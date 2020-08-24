class ProjectController < ApplicationController
	def load
		@contact = Contact.new
		@projects = Project.all
	end
	
	def  get_github_repos
		#TO DO: Select GitHub repositories as projects (VERSION 2)
		client = Octokit::Client.new(:access_token => '')
		user = client.user
		@repos = client.repos({}, query: {type: 'owner', sort: 'asc'})
	end

	def get_vimeo_videos
		#TO DO: Select Vimeo showcases as projects (VERSION 2)
		video = Vimeo::Simple::Video.info(params[:id])
		@videos = Vimeo::Simple::User.all_videos("chexvisual")
		@project.title = video[0]["title"]
		@project.link = video[0]["url"]
	end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :link,  :image)
  end
  
end
