require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
    describe 'Post #create ' do
        ''' context "when form is invalid" do
            it "renders the page with error" do
              contact = create(:contact)
        
              post :create, session: { name: contact.name, email: contact.email, message: contact.message }
        
              expect(response).to render_template(:new)
              expect(flash[:notice]).to match(...)
            end
          end
        
          context "when form is valid" do
            it "redirects to a new page" do
                contact = create(:contact)
        
                post :create, session: { name: contact.name, email: contact.email, message: contact.message }
        
              expect(response).to redirect_to "contacts/create"
            end
            it "get all projects" do
                contact = create(:contact)
                project = create(:project, title: "test", link: "http://link.test.com")
                project2 = create(:project, title: "test2", link: "http://link.test2.com")
        
                post :create, session: { name: contact.name, email: contact.email, message: contact.message }
          
                expect(assigns(:projects)).to eq([project,project2])
              end
          end
        '''
        pending "TO DO Test sending correct email form"
        pending "TO DO Test sending incorrect email form"
    end
end
