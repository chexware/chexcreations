class HomeController < ApplicationController
  helper :all
  def index
    @contact = Contact.new
  end
  
end
