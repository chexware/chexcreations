class ContactsController <p ApplicationController
    def new 
        @contact = Contact.new
        @projects = Project.all
    end
    def create
        @contact = Contact.new(params[:contact])
        @projects = Project.all
        @contact.request = request
        if @contact.deliver
            flash[:info] = 'Thank you for contacting me! I will be in touch soon ;)'
            redirect_back fallback_location: '/contact', allow_other_host: false
        else
            flash[:error] = 'Invalid name or e-mail address'
            redirect_back fallback_location: '/contact', allow_other_host: false
        end  
    end
   
end
