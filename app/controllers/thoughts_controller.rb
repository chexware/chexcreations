class ThoughtsController < ApplicationController
  authorize_resource except: [:load_all, :load_post]
  def load_all
    @thoughts = Thought.all.order(publish_date: :desc)
  end

  def load_post
    @thought  = Thought.find(params[:id])
	@comments = Comment.where(thought_id: params[:id]).order(publish_date: :desc)
  end

  def new_thought
    @thought
  end
  
  def create_thought
	@thought = Thought.new()
	@thought.title = params[:title]
	@thought.content = params[:content]
	@thought.publish_date = DateTime.now
    if @thought.save
      redirect_to '/thoughts'
    else
      render 'new_thought'
    end
  end
  
  def edit_thought
    @thought  = Thought.find(params[:id])
  end
  
  def update_thought
	@thought = Thought.find(params[:id])
    if @thought.update_attributes(:title => params[:title], :content =>  params[:content])
      redirect_to '/thoughts/' + params[:id].to_s
    else
      render 'edit_thought'
    end
  end

  def destroy_thought
    @thought = Thought.find(params[:id])
    @thought.destroy
    redirect_to '/thoughts' 
  end
  
  def create_comment
	@comment = Comment.new()
	@comment.author = params[:author]
	@comment.content = params[:content]
	@comment.publish_date = DateTime.now
	@comment.thought_id = params[:id]
	if @comment.save
      redirect_to '/thoughts/' + params[:id].to_s
    else
	  @thought = Thought.find(params[:id])
      render 'load_post'
    end
  end
  
  def destroy_comment
    @comment = Comment.find(params[:cid])
    @comment.destroy
    redirect_to '/thoughts/' + params[:tid].to_s
  end



end
