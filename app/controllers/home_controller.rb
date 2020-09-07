class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @articles = Article.all.reverse_order
    @projects = Project.all
  end
  
end
