class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @projects = Project.all
  end
  
end
