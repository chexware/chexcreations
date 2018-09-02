class ProjectController < ApplicationController
  authorize_resource except: [:load_art, :load_software]
  def load_art
	@projects = Project.where(kind: "Art")
  end
  
  def load_software
    @projects = Project.where(kind: "Software")
  end
  
  def new
	@project

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
  
  def get_vimeo_info
		video = Vimeo::Simple::Video.info(params[:id])
		@videos = Vimeo::Simple::User.all_videos("chexvisuals")
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
    params.require(:project).permit(:title, :link, :kind, :image, :image_cache)
  end
  
end
