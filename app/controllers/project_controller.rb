class ProjectController < ApplicationController
	def load_art
		@contact = Contact.new
		@projects = Project.where(kind: "Art")
	end
	
	def load_software
		@contact = Contact.new
		@projects = Project.where(kind: "Software")
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
		unless params[:pid].blank?
			@project = Project.find(params[:pid])
		else
			@project = Project.new()
		end
		@project.title = video[0]["title"]
		@project.link = video[0]["url"]
		@project.kind = 'Art'
		if params[:mode] == 'edit'
			render 'edit'
		else
			render 'new'
		end
	end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :link, :kind, :image)
  end
  
end
