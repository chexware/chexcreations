class ProjectController < ApplicationController
  def load_art
	@contact = Contact.new
	@projects = Project.where(kind: "Art")
  end
  
  def load_software
	@contact = Contact.new
    @projects = Project.where(kind: "Software")
  end
  
  def new
		@project
		if params[:mode] == "art"
			get_vimeo_videos
		else
			get_github_repos
		end
	end
	
  
  def create
  	@project = Project.new(project_params)
  
    if @project.save
	    if  project_params[:kind]  == 'Software'
		    redirect_to '/software'
	    else
		    redirect_to '/art'
	    end	
    else
      render 'new'
    end
  end
  
  def edit
		@project = Project.find(params[:id])
  end
  
  def update
  	@project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      if project_params[:kind] == 'Software'
		    redirect_to '/software'
	    else
		    redirect_to '/art'
	    end	
    else
      render 'edit'
    end
  end
  
  def delete
    @project = Project.find(params[:id])
    @project.destroy
	  if @project.kind == 'Software'
		  redirect_to '/software'
	  else
		  redirect_to '/art'
	  end	
  end
  
 
	def  get_github_repos
		client = Octokit::Client.new(:access_token => '')
		user = client.user
		@repos = client.repos({}, query: {type: 'owner', sort: 'asc'})
	end

	def get_vimeo_videos
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
