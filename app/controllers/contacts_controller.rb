class ContactsController < ApplicationController
    def create
        @contact = Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:error] = nil
        else
            flash[:error] = 'Cannot send message'
            @projects = Project.all
            render :new
        end  
    end
   
end
