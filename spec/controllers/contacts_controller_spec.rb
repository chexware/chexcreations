require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
    describe 'Post #create ' do
        context "when form is invalid" do
            it "send a flash :error notice" do
              post :create, session: { name: "Test Name", email: "test-email.com", message: "test message" }
        
              expect(flash[:error]).to match("Invalid name or e-mail address")
            end

            it "redirects to the contacts#new page" do
              post :create, session: { name: "Test Name", email: "test-email.com", message: "test message" }
              expect(response).to redirect_to "/contact"
            end

            it "get all projects" do
              #contact = create(:contact, name: "Test Name", email: "test@email.com", message: "test message")
              project = create(:project, title: "test", link: "http://link.test.com")
              project2 = create(:project, title: "test2", link: "http://link.test2.com")
      
              post :create, session: { name: "Test Name", email: "test-email.com", message: "test message" }
        
              expect(assigns(:projects)).to eq([project,project2])
            end
      end
         
      context "when form is valid" do
        it "redirects to the contacts#new page" do
          post :create, session: { name: "Test Name", email: "test@email.com", message: "test message" }
    
          expect(response).to redirect_to "/contact"
        end
        

        it "get all projects" do
            #contact = create(:contact, name: "Test Name", email: "test@email.com", message: "test message")
            project = create(:project, title: "test", link: "http://link.test.com")
            project2 = create(:project, title: "test2", link: "http://link.test2.com")
    
            post :create, session: { name: "Test Name", email: "test@email.com", message: "test message" }
      
            expect(assigns(:projects)).to eq([project,project2])
          end
      end
    end
end
